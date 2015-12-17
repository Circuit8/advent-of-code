require 'pry'
class Password < String

public
	
	def next_password
		self.next!

		until valid?
			self.next!
		end
	end

private

	def valid?
		has_straight_run? && has_double_pair? && !has_forbidden_chars?
	end

	def has_straight_run?
		split("").each_cons(3){ |chunk|
			if((chunk[0].next.next == chunk[1].next) && (chunk[1].next == chunk[2]))
				return true 
			end
		}
	end

	def has_forbidden_chars?
		return true if self =~ /[iol]/
	end

	def has_double_pair?
		return true if self.scan(/(.)\1/).uniq.size > 1
	end

end

INPUT = "cqjxjnds"
password = Password.new(INPUT)

password.next_password
puts password


# s = 'cqjxjnds'
# r = Regexp.union [*?a..?z].each_cons(3).map(&:join)
# s.succ! until s[r] && s !~ /[iol]/ && s.scan(/(.)\1/).size > 1
# p s