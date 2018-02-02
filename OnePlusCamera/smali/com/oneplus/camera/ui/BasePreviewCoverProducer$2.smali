.class Lcom/oneplus/camera/ui/BasePreviewCoverProducer$2;
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


# static fields
.field private static final synthetic -com-oneplus-camera-ui-PreviewCoverProducer$StateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$camera$ui$PreviewCoverProducer$State:[I

.field final synthetic this$0:Lcom/oneplus/camera/ui/BasePreviewCoverProducer;


# direct methods
.method private static synthetic -getcom-oneplus-camera-ui-PreviewCoverProducer$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$2;->-com-oneplus-camera-ui-PreviewCoverProducer$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$2;->-com-oneplus-camera-ui-PreviewCoverProducer$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->values()[Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->PREPARING:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->STOPPED:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$2;->-com-oneplus-camera-ui-PreviewCoverProducer$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/oneplus/camera/ui/BasePreviewCoverProducer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$2;->this$0:Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
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

    const/4 v2, 0x0

    .line 71
    invoke-static {}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$2;->-getcom-oneplus-camera-ui-PreviewCoverProducer$StateSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 74
    :pswitch_0
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->PREPARING:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    if-ne v0, v2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$2;->this$0:Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->startInAnimation(Z)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$2;->this$0:Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    invoke-static {v0}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->-get3(Lcom/oneplus/camera/ui/BasePreviewCoverProducer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v3, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$2;->this$0:Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$2;->this$0:Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    invoke-static {v0}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->-get2(Lcom/oneplus/camera/ui/BasePreviewCoverProducer;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->startOutAnimation(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
