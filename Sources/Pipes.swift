precedencegroup LeftFunctionalApply {
    associativity: left
    higherThan: AssignmentPrecedence
    lowerThan: TernaryPrecedence
}

infix operator |> : LeftFunctionalApply

@discardableResult
public func |> <A,B>(x:A, f:(A) throws -> B)
    rethrows -> B {
        return try f(x)
}
