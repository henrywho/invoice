module LineItemsHelper
  def prettify_changeset(version)
    updated_by = nil
    if version.whodunnit
      updated_by = User.find(version.whodunnit)
    end

    changeset = version.changeset
    updated_at = changeset.delete("updated_at").second
    summary = "At #{updated_at}, "

    changeset.each do |k, v|
      summary << "#{k} changed from #{v.first} to #{v.second}"
    end

    summary << " by #{updated_by.email}" if updated_by
    summary << "."

    summary
  end
end
