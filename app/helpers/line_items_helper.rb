module LineItemsHelper
  def prettify_changeset(changeset)
    updated_at = changeset.delete("updated_at").second
    summary = "At #{updated_at}, "

    changeset.each do |k, v|
      summary << "#{k} changed from #{v.first} to #{v.second}"
    end

    summary << "."

    summary
  end
end
