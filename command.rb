require 'open3'

class Command
  def to_s
    "ssh bbpv1.epfl.ch /gpfs/bbp.cscs.ch/ssd/apps/bb5/systemtools/getStorageStats"
  end

  # Execute the command, returning an array of
  # the command output and nil for the error string.
  #
  # returns [String, String] i.e.[projectStorageStats, error]
  def exec
    projectStorageStats, error = [], nil

    stdout_str, stderr_str, status = Open3.capture3(to_s)
    if status.success?
      projectStorageStats = stdout_str
    else
      error = "Command '#{to_s}' exited with error: #{stderr_str}"
    end

    [projectStorageStats, error]
  end
end
