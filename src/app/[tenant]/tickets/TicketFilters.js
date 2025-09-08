"use client"

import { useRef } from "react"

export function TicketFilters({ tenant }) {
  const searchInputRef = useRef(null)
  const onSubmit = (event) => {
    event.preventDefault();
    const search = searchInputRef.current.value

    alert("Search tickets containing " + search)
  }

  return (
    <form onSubmit={onSubmit}>
      <div
        style={{
          alignContent: "center",
          display: "flex",
          gap: "15px"
        }}
      >
        <input 
          type="search"
          ref={searchInputRef}
          id="search"
          name="search"
          placeholder="Search tickets ..."
          required
          style={{ margin: 0, maxWidth: "350px" }}
        />

        <button type="submit" role="button" style={{ width: "auto" }}>
          Search
        </button>
      </div>
    </form>
  )
}