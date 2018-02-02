.class public final Lcom/oneplus/gallery2/media/MediaStoreMediaSourceBuilder;
.super Lcom/oneplus/base/BaseAppComponentBuilder;
.source "MediaStoreMediaSourceBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSourceBuilder;-><init>(Z)V

    .line 13
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 17
    if-nez p1, :cond_0

    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->ON_DEMAND:Lcom/oneplus/base/component/ComponentCreationPriority;

    :goto_0
    const-class v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/base/BaseAppComponentBuilder;-><init>(Lcom/oneplus/base/component/ComponentCreationPriority;Ljava/lang/Class;)V

    .line 18
    return-void

    .line 17
    :cond_0
    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    goto :goto_0
.end method


# virtual methods
.method protected create(Lcom/oneplus/base/BaseApplication;)Lcom/oneplus/base/component/Component;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-direct {v0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;-><init>(Lcom/oneplus/base/BaseApplication;)V

    return-object v0
.end method
