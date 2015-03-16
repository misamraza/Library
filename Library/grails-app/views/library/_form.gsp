<%@ page import="com.Library.Library" %>



<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'location', 'error')} required">
	<label for="location">
		<g:message code="library.location.label" default="Location" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="location" required="" value="${libraryInstance?.location}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'openingHours', 'error')} required">
	<label for="openingHours">
		<g:message code="library.openingHours.label" default="Opening Hours" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="openingHours" required="" value="${libraryInstance?.openingHours}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'book', 'error')} required">
	<label for="book">
		<g:message code="library.book.label" default="Book" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="book" name="book.id" from="${com.Library.Book.list()}" optionKey="id" required="" value="${libraryInstance?.book?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="library.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${com.Library.Student.list()}" optionKey="id" required="" value="${libraryInstance?.student?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'librarian', 'error')} required">
	<label for="librarian">
		<g:message code="library.librarian.label" default="Librarian" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="librarian" name="librarian.id" from="${com.Library.Librarian.list()}" optionKey="id" required="" value="${libraryInstance?.librarian?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'books', 'error')} ">
	<label for="books">
		<g:message code="library.books.label" default="Books" />
		
	</label>
	<g:select name="books" from="${com.Library.Book.list()}" multiple="multiple" optionKey="id" size="5" value="${libraryInstance?.books*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'librarians', 'error')} ">
	<label for="librarians">
		<g:message code="library.librarians.label" default="Librarians" />
		
	</label>
	<g:select name="librarians" from="${com.Library.Librarian.list()}" multiple="multiple" optionKey="id" size="5" value="${libraryInstance?.librarians*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'students', 'error')} ">
	<label for="students">
		<g:message code="library.students.label" default="Students" />
		
	</label>
	<g:select name="students" from="${com.Library.Student.list()}" multiple="multiple" optionKey="id" size="5" value="${libraryInstance?.students*.id}" class="many-to-many"/>

</div>

