.class public final Lcom/oneplus/camera/location/LocationManagerBuilder;
.super Ljava/lang/Object;
.source "LocationManagerBuilder.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentBuilder;


# instance fields
.field m_SupportAMAP:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "supportAMAP"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/location/LocationManagerBuilder;->m_SupportAMAP:Z

    .line 32
    iput-boolean p1, p0, Lcom/oneplus/camera/location/LocationManagerBuilder;->m_SupportAMAP:Z

    .line 31
    return-void
.end method


# virtual methods
.method public varargs create([Ljava/lang/Object;)Lcom/oneplus/base/component/Component;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 20
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 22
    aget-object v0, p1, v2

    instance-of v0, v0, Lcom/oneplus/camera/CameraActivity;

    if-eqz v0, :cond_0

    .line 23
    new-instance v1, Lcom/oneplus/camera/location/UILocationManagerImpl;

    aget-object v0, p1, v2

    check-cast v0, Lcom/oneplus/camera/CameraActivity;

    iget-boolean v2, p0, Lcom/oneplus/camera/location/LocationManagerBuilder;->m_SupportAMAP:Z

    invoke-direct {v1, v0, v2}, Lcom/oneplus/camera/location/UILocationManagerImpl;-><init>(Lcom/oneplus/camera/CameraActivity;Z)V

    return-object v1

    .line 24
    :cond_0
    aget-object v0, p1, v2

    instance-of v0, v0, Lcom/oneplus/camera/CameraThread;

    if-eqz v0, :cond_1

    .line 25
    new-instance v1, Lcom/oneplus/camera/location/LocationManagerImpl;

    aget-object v0, p1, v2

    check-cast v0, Lcom/oneplus/camera/CameraThread;

    invoke-direct {v1, v0}, Lcom/oneplus/camera/location/LocationManagerImpl;-><init>(Lcom/oneplus/camera/CameraThread;)V

    return-object v1

    .line 27
    :cond_1
    return-object v1
.end method

.method public getPriority()Lcom/oneplus/base/component/ComponentCreationPriority;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->NORMAL:Lcom/oneplus/base/component/ComponentCreationPriority;

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
    .line 48
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/oneplus/camera/location/LocationManager;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
