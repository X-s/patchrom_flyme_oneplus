.class public abstract Lcom/oneplus/camera/ui/BasePreviewCoverProducer;
.super Lcom/oneplus/base/HandlerBaseObject;
.source "BasePreviewCoverProducer.java"

# interfaces
.implements Lcom/oneplus/camera/ui/PreviewCoverProducer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/BasePreviewCoverProducer$2;
    }
.end annotation


# instance fields
.field private m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

.field private m_HideFlags:I

.field private m_IsVisible:Z

.field private m_PreviewCoverBackgroundView:Landroid/view/View;

.field private m_PreviewCoverContainer:Landroid/view/View;

.field private m_PreviewCoverImageViews:[Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 5
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v4, 0x1

    .line 30
    invoke-direct {p0, v4}, Lcom/oneplus/base/HandlerBaseObject;-><init>(Z)V

    .line 33
    iput-object p1, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    .line 36
    const v0, 0x7f0b0041

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_PreviewCoverContainer:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_PreviewCoverContainer:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_PreviewCoverContainer:Landroid/view/View;

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_PreviewCoverContainer:Landroid/view/View;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_PreviewCoverContainer:Landroid/view/View;

    const v1, 0x7f0b006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_PreviewCoverBackgroundView:Landroid/view/View;

    .line 40
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/widget/ImageView;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_PreviewCoverContainer:Landroid/view/View;

    const v3, 0x7f0b006b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_PreviewCoverContainer:Landroid/view/View;

    const v2, 0x7f0b006c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v4

    iput-object v1, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_PreviewCoverImageViews:[Landroid/widget/ImageView;

    .line 46
    sget-object v0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$1;-><init>(Lcom/oneplus/camera/ui/BasePreviewCoverProducer;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 68
    sget-object v0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v4}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/BasePreviewCoverProducer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_IsVisible:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ui/BasePreviewCoverProducer;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    .prologue
    .line 16
    iget v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_HideFlags:I

    return v0
.end method


# virtual methods
.method protected getCameraActivity()Lcom/oneplus/camera/CameraActivity;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    return-object v0
.end method

.method protected getPreviewCoverBackgroundView()Landroid/view/View;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_PreviewCoverBackgroundView:Landroid/view/View;

    return-object v0
.end method

.method protected getPreviewCoverBaseImageView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_PreviewCoverImageViews:[Landroid/widget/ImageView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getPreviewCoverContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_PreviewCoverContainer:Landroid/view/View;

    return-object v0
.end method

.method protected getPreviewCoverTopImageView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_PreviewCoverImageViews:[Landroid/widget/ImageView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final hidePreviewCover(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string v2, "hidePreviewCover()"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_IsVisible:Z

    .line 114
    iput p1, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_HideFlags:I

    .line 116
    sget-object v2, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$2;->$SwitchMap$com$oneplus$camera$ui$PreviewCoverProducer$State:[I

    sget-object v0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 119
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->STOPPED:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :pswitch_1
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->startOutAnimation(Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract preparePreviewCover()Z
.end method

.method protected abstract reverseInAnimation()V
.end method

.method protected abstract reverseOutAnimation()V
.end method

.method public final showPreviewCover(I)Z
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x1

    .line 146
    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string v2, "showPreviewCover()"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_IsVisible:Z

    .line 149
    sget-object v2, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$2;->$SwitchMap$com$oneplus$camera$ui$PreviewCoverProducer$State:[I

    sget-object v0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 164
    :goto_1
    return v0

    .line 152
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->PREPARING:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->preparePreviewCover()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    sget-object v0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->STOPPED:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 156
    const/4 v0, 0x0

    goto :goto_1

    .line 161
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->reverseOutAnimation()V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract startInAnimation(Z)V
.end method

.method protected abstract startOutAnimation(Z)V
.end method
