.class Lcom/oneplus/camera/ui/BasePreviewCoverProducer$1;
.super Ljava/lang/Object;
.source "BasePreviewCoverProducer.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/BasePreviewCoverProducer;-><init>(Lcom/oneplus/camera/CameraActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Lcom/oneplus/camera/ui/PreviewCoverProducer$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/BasePreviewCoverProducer;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/BasePreviewCoverProducer;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$1;->this$0:Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/ui/PreviewCoverProducer$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/ui/PreviewCoverProducer$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/ui/PreviewCoverProducer$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/ui/PreviewCoverProducer$State;>;"
    const/4 v1, 0x1

    .line 52
    sget-object v2, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$2;->$SwitchMap$com$oneplus$camera$ui$PreviewCoverProducer$State:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 55
    :pswitch_0
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->PREPARING:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    if-ne v0, v2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$1;->this$0:Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->startInAnimation(Z)V

    goto :goto_0

    .line 60
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$1;->this$0:Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_IsVisible:Z
    invoke-static {v0}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->access$000(Lcom/oneplus/camera/ui/BasePreviewCoverProducer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v2, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$1;->this$0:Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$1;->this$0:Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->m_HideFlags:I
    invoke-static {v0}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->access$100(Lcom/oneplus/camera/ui/BasePreviewCoverProducer;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->startOutAnimation(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
