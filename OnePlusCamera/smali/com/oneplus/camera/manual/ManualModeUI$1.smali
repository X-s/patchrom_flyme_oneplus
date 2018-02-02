.class Lcom/oneplus/camera/manual/ManualModeUI$1;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/camera/UIComponent$ViewRotationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/manual/ManualModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$base$Rotation:[I

.field final synthetic this$0:Lcom/oneplus/camera/manual/ManualModeUI;


# direct methods
.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$1;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$1;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/Rotation;->values()[Lcom/oneplus/base/Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI$1;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$1;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotated(Landroid/view/View;Lcom/oneplus/base/Rotation;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0xa

    .line 210
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI$1;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-get13(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 211
    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI$1;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-get13(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 213
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 214
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 215
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI$1;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 222
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 225
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI$1;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-get13(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 208
    return-void

    .line 219
    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
