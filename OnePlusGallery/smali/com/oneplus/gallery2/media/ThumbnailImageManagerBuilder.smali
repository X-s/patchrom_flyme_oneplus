.class public final Lcom/oneplus/gallery2/media/ThumbnailImageManagerBuilder;
.super Lcom/oneplus/base/BaseAppComponentBuilder;
.source "ThumbnailImageManagerBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->ON_DEMAND:Lcom/oneplus/base/component/ComponentCreationPriority;

    const-class v1, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/base/BaseAppComponentBuilder;-><init>(Lcom/oneplus/base/component/ComponentCreationPriority;Ljava/lang/Class;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/base/BaseApplication;)Lcom/oneplus/base/component/Component;
    .locals 1
    .param p1, "application"    # Lcom/oneplus/base/BaseApplication;

    .prologue
    .line 26
    new-instance v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    invoke-direct {v0, p1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;-><init>(Lcom/oneplus/base/BaseApplication;)V

    return-object v0
.end method
