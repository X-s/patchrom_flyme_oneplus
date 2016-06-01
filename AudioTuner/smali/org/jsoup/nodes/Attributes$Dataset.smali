.class Lorg/jsoup/nodes/Attributes$Dataset;
.super Ljava/util/AbstractMap;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Dataset"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;,
        Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jsoup/nodes/Attributes;


# direct methods
.method private constructor <init>(Lorg/jsoup/nodes/Attributes;)V
    .locals 2

    .prologue
    .line 193
    iput-object p1, p0, Lorg/jsoup/nodes/Attributes$Dataset;->this$0:Lorg/jsoup/nodes/Attributes;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 194
    # getter for: Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;
    invoke-static {p1}, Lorg/jsoup/nodes/Attributes;->access$1(Lorg/jsoup/nodes/Attributes;)Ljava/util/LinkedHashMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-static {p1, v0}, Lorg/jsoup/nodes/Attributes;->access$2(Lorg/jsoup/nodes/Attributes;Ljava/util/LinkedHashMap;)V

    .line 196
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/nodes/Attributes;Lorg/jsoup/nodes/Attributes$Dataset;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes$Dataset;-><init>(Lorg/jsoup/nodes/Attributes;)V

    return-void
.end method

.method static synthetic access$2(Lorg/jsoup/nodes/Attributes$Dataset;)Lorg/jsoup/nodes/Attributes;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset;->this$0:Lorg/jsoup/nodes/Attributes;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;-><init>(Lorg/jsoup/nodes/Attributes$Dataset;Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Attributes$Dataset;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 204
    # invokes: Lorg/jsoup/nodes/Attributes;->dataKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lorg/jsoup/nodes/Attributes;->access$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "dataKey":Ljava/lang/String;
    iget-object v3, p0, Lorg/jsoup/nodes/Attributes$Dataset;->this$0:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/jsoup/nodes/Attributes$Dataset;->this$0:Lorg/jsoup/nodes/Attributes;

    # getter for: Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;
    invoke-static {v3}, Lorg/jsoup/nodes/Attributes;->access$1(Lorg/jsoup/nodes/Attributes;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Attribute;

    invoke-virtual {v3}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "oldValue":Ljava/lang/String;
    :goto_0
    new-instance v0, Lorg/jsoup/nodes/Attribute;

    invoke-direct {v0, v1, p2}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .local v0, "attr":Lorg/jsoup/nodes/Attribute;
    iget-object v3, p0, Lorg/jsoup/nodes/Attributes$Dataset;->this$0:Lorg/jsoup/nodes/Attributes;

    # getter for: Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;
    invoke-static {v3}, Lorg/jsoup/nodes/Attributes;->access$1(Lorg/jsoup/nodes/Attributes;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-object v2

    .line 205
    .end local v0    # "attr":Lorg/jsoup/nodes/Attribute;
    .end local v2    # "oldValue":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
