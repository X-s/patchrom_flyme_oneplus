.class public final Lcom/oneplus/gallery2/location/LocationManagerBuilder;
.super Lcom/oneplus/base/BaseAppComponentBuilder;
.source "LocationManagerBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->ON_DEMAND:Lcom/oneplus/base/component/ComponentCreationPriority;

    const-class v1, Lcom/oneplus/gallery2/location/LocationManager;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/base/BaseAppComponentBuilder;-><init>(Lcom/oneplus/base/component/ComponentCreationPriority;Ljava/lang/Class;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/base/BaseApplication;)Lcom/oneplus/base/component/Component;
    .locals 1
    .param p1, "application"    # Lcom/oneplus/base/BaseApplication;

    .prologue
    .line 27
    invoke-static {}, Lcom/oneplus/base/Device;->isHydrogenOS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;

    invoke-direct {v0, p1}, Lcom/oneplus/gallery2/location/LocationManagerImpl;-><init>(Lcom/oneplus/base/BaseApplication;)V

    goto :goto_0
.end method
