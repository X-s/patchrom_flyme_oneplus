.class public Lcom/oneplus/base/PermissionManagerBuilder;
.super Ljava/lang/Object;
.source "PermissionManagerBuilder.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs create([Ljava/lang/Object;)Lcom/oneplus/base/component/Component;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 14
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 16
    aget-object v0, p1, v2

    instance-of v0, v0, Lcom/oneplus/base/BaseApplication;

    if-eqz v0, :cond_0

    .line 18
    new-instance v1, Lcom/oneplus/base/PermissionManagerImpl;

    aget-object v0, p1, v2

    check-cast v0, Lcom/oneplus/base/component/ComponentOwner;

    invoke-direct {v1, v0}, Lcom/oneplus/base/PermissionManagerImpl;-><init>(Lcom/oneplus/base/component/ComponentOwner;)V

    return-object v1

    .line 21
    :cond_0
    return-object v1
.end method

.method public getPriority()Lcom/oneplus/base/component/ComponentCreationPriority;
    .locals 1

    .prologue
    .line 29
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
    .line 37
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/oneplus/base/PermissionManager;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
