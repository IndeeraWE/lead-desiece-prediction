
from fastapi import FastAPI
from typing import Union


from pydantic import BaseModel


app = FastAPI()#create a instance

class Item(BaseModel):
    name: str = "Foo"
    description: Union[str, None] = "My name is ashane"
    price: float
    tax: Union[float, None] = None





fake_items_db = [{"item_name": "Foo"}, {"item_name": "Bar"}, {"item_name": "Baz"}]

@app.get("/")#create path operation/declarate
async def root123():
    return{"Hello": "ashane"}

@app.get("/com/weera/{id}")
async def name_function(id:int):#get id as a integer(id:str)
    return{"Hello": {"chenali":id}}

# @app.get("/com/weera/kasun")
# async def name_function():#get id as a integer(id:str)
#     return{"Hello": {"chenali":"harindi"}}This was not run,Because when gives kasun run up operation function
@app.get("/blog/")#create path operation/declarate
def re123(limit=10, published: bool=True):

    if published:
        return{"Hello": f"{limit} published parameters from blog"}#Query parameters
    else:
        return {"Hello": f"{limit} parametes from blog"}


@app.get("/items/")
async def read_item(skip: int = 0, limit: int = 10):
    return fake_items_db[skip : skip + limit]


@app.post("/ashane")
def create_post(item: Item):
    return {"data": f"my name is {item.name}"}




#output is a JSON response


# @app.get("/")
# async def fetch_users():
#     return db;