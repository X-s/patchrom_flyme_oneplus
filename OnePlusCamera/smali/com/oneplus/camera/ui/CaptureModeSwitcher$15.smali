.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;->onInitialize()V
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
        "Lcom/oneplus/camera/ui/PreviewCover$UIState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$camera$ui$PreviewCover$UIState:[I

.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;


# direct methods
.method private static synthetic -getcom-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->values()[Lcom/oneplus/camera/ui/PreviewCover$UIState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->CLOSED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->CLOSING:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENING:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->PREPARE_TO_CLOSE:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->PREPARE_TO_OPEN:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

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

.method constructor <init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 7
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/ui/PreviewCover$UIState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/ui/PreviewCover$UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/ui/PreviewCover$UIState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/ui/PreviewCover$UIState;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1120
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->-getcom-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1118
    :cond_0
    :goto_0
    return-void

    .line 1123
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get14(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1125
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get3(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get17(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    invoke-interface {v0}, Lcom/oneplus/camera/capturemode/CaptureMode;->getCaptureModeMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_4

    .line 1126
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get6(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1129
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get9(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1131
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get9(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1132
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get9(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setActivated(Z)V

    .line 1134
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get6(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1136
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_SWITCH_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->CLICK_CAPTURE_MODES_PANEL:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get13(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1139
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap12(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    goto :goto_0

    .line 1128
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get6(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 1137
    :cond_5
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPropertyChanged() - PROP_UI_STATE OPENED ,  wait for animation end"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1142
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get12(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_SWITCH_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->CLICK_CAPTURE_MODES_PANEL:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    if-ne v0, v1, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/16 v1, 0x2715

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZ)Z

    goto/16 :goto_0

    .line 1146
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get14(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get6(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 1148
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-set6(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Z)Z

    .line 1149
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-set7(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Z)Z

    .line 1150
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get6(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Landroid/widget/ImageView;

    move-result-object v2

    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap15(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 1152
    :cond_6
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get7(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1153
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get7(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-set1(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1155
    :cond_7
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get12(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$15;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap5(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    goto/16 :goto_0

    .line 1120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
