.class public abstract Lcom/oneplus/camera/CameraThreadComponentBuilder;
.super Ljava/lang/Object;
.source "CameraThreadComponentBuilder.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentBuilder;


# instance fields
.field private final m_ComponentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/oneplus/camera/CameraThreadComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Priority:Lcom/oneplus/base/component/ComponentCreationPriority;


# direct methods
.method protected constructor <init>(Lcom/oneplus/base/component/ComponentCreationPriority;Ljava/lang/Class;)V
    .locals 2
    .param p1, "priority"    # Lcom/oneplus/base/component/ComponentCreationPriority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/component/ComponentCreationPriority;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/oneplus/camera/CameraThreadComponent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/oneplus/camera/CameraThreadComponent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No creation priority."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    if-nez p2, :cond_1

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No component type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    iput-object p1, p0, Lcom/oneplus/camera/CameraThreadComponentBuilder;->m_Priority:Lcom/oneplus/base/component/ComponentCreationPriority;

    .line 39
    iput-object p2, p0, Lcom/oneplus/camera/CameraThreadComponentBuilder;->m_ComponentType:Ljava/lang/Class;

    .line 32
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/oneplus/camera/CameraThreadComponent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/oneplus/camera/CameraThreadComponent;>;"
    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->NORMAL:Lcom/oneplus/base/component/ComponentCreationPriority;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/CameraThreadComponentBuilder;-><init>(Lcom/oneplus/base/component/ComponentCreationPriority;Ljava/lang/Class;)V

    .line 21
    return-void
.end method


# virtual methods
.method public varargs create([Ljava/lang/Object;)Lcom/oneplus/base/component/Component;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 48
    :cond_0
    return-object v2

    .line 49
    :cond_1
    aget-object v0, p1, v1

    instance-of v0, v0, Lcom/oneplus/camera/CameraThread;

    if-nez v0, :cond_2

    .line 50
    return-object v2

    .line 51
    :cond_2
    aget-object v0, p1, v1

    check-cast v0, Lcom/oneplus/camera/CameraThread;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/CameraThreadComponentBuilder;->create(Lcom/oneplus/camera/CameraThread;)Lcom/oneplus/camera/CameraThreadComponent;

    move-result-object v0

    return-object v0
.end method

.method protected abstract create(Lcom/oneplus/camera/CameraThread;)Lcom/oneplus/camera/CameraThreadComponent;
.end method

.method public final getPriority()Lcom/oneplus/base/component/ComponentCreationPriority;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/camera/CameraThreadComponentBuilder;->m_Priority:Lcom/oneplus/base/component/ComponentCreationPriority;

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
    .line 74
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/oneplus/camera/CameraThreadComponentBuilder;->m_ComponentType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
