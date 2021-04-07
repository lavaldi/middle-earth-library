import React from "react";
import { Mutation } from "react-apollo";
import { AddItemMutation } from "./operations.graphql";
import ProcessItemForm from "../ProcessItemForm";
import { LibraryQuery } from '../Library/operations.graphql';
import cs from "./styles";

const AddItemForm = () => (
  <div className={cs.addItemForm}>
    <Mutation mutation={AddItemMutation}>
      {(addItem, { loading, error }) => (
        <ProcessItemForm
          buttonText="Add Item"
          loading={loading}
          errors={error}
          onProcessItem={({ title, description, imageUrl }) =>
            addItem({
              variables: {
                title,
                description,
                imageUrl,
              },
              update: (cache, { data: { addItem } }) => {
                const item = addItem.item;
                if (item) {
                  const currentItems = cache.readQuery({ query: LibraryQuery });
                  cache.writeQuery({
                    query: LibraryQuery,
                    data: {
                      items: [item].concat(currentItems.items),
                    },
                  });
                }
              },
            })
          }
        />
      )}
    </Mutation>
  </div>
);

export default AddItemForm;