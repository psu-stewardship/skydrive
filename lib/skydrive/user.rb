module Skydrive
  # The user object
  class User < Skydrive::Object
    # User's home directory
    # @return [Skydrive::Folder]
    def skydrive
      response = get("/#{id}/skydrive")
    end

    # User's camera_roll folder
    # @return [Skydrive::Folder]
    def camera_roll
      response = get("/#{id}/skydrive/camera_roll")
    end

    # User's documents
    # @return [Skydrive::Folder]
    def documents
      response = get("/#{id}/skydrive/my_documents")
    end

    # User's default album
    # @return [Skydrive::Album]
    def photos
      response = get("/#{id}/skydrive/my_photos")
    end

    # User's public documents
    # @return [Skydrive::Folder]
    def public_documents
      response = get("/#{id}/skydrive/public_documents")
    end

    # User's shared items
    # @return [Skydrive::Collection]
    def shared_stuff
      response = get("/#{id}/skydrive/shared")
    end

    # User's recent documents
    # @return [Skydrive::Collection]
    def recent_documents
      response = get("/#{id}/skydrive/recent_docs")
    end

    # User's total and remaining storage quota
    # @return [Hash] contains keys quota and available
    def storage_quota
      response = get("/#{id}/skydrive/quota")
    end

  end
end