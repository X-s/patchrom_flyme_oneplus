.class public Lcom/oneplus/camera/ui/EmptyPreviewCoverProducer;
.super Lcom/oneplus/base/HandlerBaseObject;
.source "EmptyPreviewCoverProducer.java"

# interfaces
.implements Lcom/oneplus/camera/ui/PreviewCoverProducer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/base/HandlerBaseObject;-><init>(Z)V

    .line 10
    return-void
.end method


# virtual methods
.method public hidePreviewCover(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 15
    sget-object v0, Lcom/oneplus/camera/ui/EmptyPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->STOPPED:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/EmptyPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method public isAlphaBlending()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public showPreviewCover(I)Z
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 29
    sget-object v0, Lcom/oneplus/camera/ui/EmptyPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/EmptyPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 30
    const/4 v0, 0x1

    return v0
.end method
