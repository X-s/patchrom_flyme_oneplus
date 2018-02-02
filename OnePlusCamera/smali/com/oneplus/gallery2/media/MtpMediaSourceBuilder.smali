.class public Lcom/oneplus/gallery2/media/MtpMediaSourceBuilder;
.super Lcom/oneplus/base/BaseAppComponentBuilder;
.source "MtpMediaSourceBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    const-class v1, Lcom/oneplus/gallery2/media/MtpMediaSource;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/base/BaseAppComponentBuilder;-><init>(Lcom/oneplus/base/component/ComponentCreationPriority;Ljava/lang/Class;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/base/BaseApplication;)Lcom/oneplus/base/component/Component;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/oneplus/gallery2/media/MtpMediaSource;

    invoke-direct {v0, p1}, Lcom/oneplus/gallery2/media/MtpMediaSource;-><init>(Lcom/oneplus/base/BaseApplication;)V

    return-object v0
.end method
