Node Query System is a node based environment querying system to find out the best position based on multiple tests done on the environment.

# Quick Start

1. Add a EnvironmentQuery Node into the scene.
2. Add a Generation Node as child of the Environment Query.
3. Add a test as a child of the Generation node. The tree structure should look like the following:
   ![alt text](./images/quickstart.png)
4. Add a context node anywhere in the tree, ContextTargetNode should suffice to get the root of the scene. Choose the root as the target of GeneratorGridShape and TestDistanceTo.
5. Double check if any values on the nodes aren't set, if done correctly the query should be able to generate. You can tick "Use Debug Shapes" on EnvironmentQuery to get a visual.
6. You can now request a query on the root node with this function:

```gdscript
var query_result: EnvironmentQuery.QueryResult = $EnvironmentQuery.request_query()
```

This will return a query result that you can then get a best position with the following:

```gdscript
var best_position: Vector3 = query_result.get_highest_score_position()
```
