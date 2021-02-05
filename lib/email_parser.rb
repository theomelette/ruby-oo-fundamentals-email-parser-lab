# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end
    
    def parse
        emails_array = @emails.split(/[, ]/).uniq
        emails_array.reject! {|e| e.empty?}
        emails_array
    end

end