.class public Lcom/oneplus/io/StorageManagerBuilder;
.super Ljava/lang/Object;
.source "StorageManagerBuilder.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs create([Ljava/lang/Object;)Lcom/oneplus/base/component/Component;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 19
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 21
    aget-object v0, p1, v1

    instance-of v0, v0, Lcom/oneplus/base/BaseApplication;

    if-eqz v0, :cond_0

    .line 23
    new-instance v2, Lcom/oneplus/io/StorageManagerImpl;

    aget-object v0, p1, v1

    check-cast v0, Lcom/oneplus/base/component/ComponentOwner;

    aget-object v1, p1, v1

    check-cast v1, Lcom/oneplus/base/BaseApplication;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/oneplus/io/StorageManagerImpl;-><init>(Lcom/oneplus/base/component/ComponentOwner;Landroid/content/Context;)V

    return-object v2

    .line 26
    :cond_0
    return-object v2
.end method

.method public getPriority()Lcom/oneplus/base/component/ComponentCreationPriority;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->ON_DEMAND:Lcom/oneplus/base/component/ComponentCreationPriority;

    return-object v0
.end method

.method public isComponentTypeSupported(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/oneplus/io/StorageManager;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
