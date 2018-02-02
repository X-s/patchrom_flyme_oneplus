.class Lcom/oneplus/camera/ui/ViewfinderImpl$7;
.super Ljava/lang/Object;
.source "ViewfinderImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ViewfinderImpl;->onInitialize()V
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
        "Lcom/oneplus/base/BaseActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-BaseActivity$StateSwitchesValues:[I

.field private static final synthetic -com-oneplus-camera-ui-Viewfinder$PreviewRenderingModeSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$base$BaseActivity$State:[I

.field final synthetic $SWITCH_TABLE$com$oneplus$camera$ui$Viewfinder$PreviewRenderingMode:[I

.field final synthetic this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

.field final synthetic val$cameraActivity:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method private static synthetic -getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseActivity$State;->values()[Lcom/oneplus/base/BaseActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->CREATING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW_INTENT:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STARTING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    sput-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1

    :catch_a
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-ui-Viewfinder$PreviewRenderingModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->-com-oneplus-camera-ui-Viewfinder$PreviewRenderingModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->-com-oneplus-camera-ui-Viewfinder$PreviewRenderingModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->values()[Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->DIRECT:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->OPENGL:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->-com-oneplus-camera-ui-Viewfinder$PreviewRenderingModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/oneplus/camera/ui/ViewfinderImpl;Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ViewfinderImpl;
    .param p2, "val$cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    iput-object p2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 5
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/BaseActivity$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/BaseActivity$State;>;"
    const/16 v4, 0x2710

    const/4 v3, 0x0

    .line 568
    invoke-static {}, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->-getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 566
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 571
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get2(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/SurfaceView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 574
    .local v0, "rootView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 575
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-wrap1(Lcom/oneplus/camera/ui/ViewfinderImpl;Landroid/view/View;)V

    .line 576
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-wrap10(Lcom/oneplus/camera/ui/ViewfinderImpl;)V

    .line 577
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get4(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get4(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get4(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 589
    .end local v0    # "rootView":Landroid/view/View;
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get2(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/SurfaceView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get2(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 590
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 592
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get4(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get4(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 593
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get4(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 595
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/camera/ui/ViewfinderImpl$7$1;

    iget-object v3, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/camera/ui/ViewfinderImpl$7$1;-><init>(Lcom/oneplus/camera/ui/ViewfinderImpl$7;Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 606
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 607
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get2(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/SurfaceView;

    move-result-object v1

    if-nez v1, :cond_5

    .line 609
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 610
    .restart local v0    # "rootView":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 611
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-wrap1(Lcom/oneplus/camera/ui/ViewfinderImpl;Landroid/view/View;)V

    .line 612
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-wrap10(Lcom/oneplus/camera/ui/ViewfinderImpl;)V

    .line 614
    .end local v0    # "rootView":Landroid/view/View;
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get2(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/SurfaceView;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get2(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    .line 615
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get2(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 616
    :cond_6
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get4(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get4(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_7

    .line 617
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get4(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 618
    :cond_7
    invoke-static {}, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->-getcom-oneplus-camera-ui-Viewfinder$PreviewRenderingModeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get5(Lcom/oneplus/camera/ui/ViewfinderImpl;)Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 621
    :pswitch_4
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get3(Lcom/oneplus/camera/ui/ViewfinderImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    sget-object v2, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/ui/ViewfinderImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get0(Lcom/oneplus/camera/ui/ViewfinderImpl;)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get1(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$7;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-static {v4}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-get1(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-wrap3(Lcom/oneplus/camera/ui/ViewfinderImpl;III)V

    goto/16 :goto_0

    .line 568
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 618
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
