.class Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
.super Ljava/lang/Object;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamControl"
.end annotation


# instance fields
.field controller:Landroid/media/session/MediaController;

.field divider:Landroid/view/View;

.field group:Landroid/view/ViewGroup;

.field icon:Landroid/widget/ImageView;

.field iconMuteRes:I

.field iconRes:I

.field iconSuppressedRes:I

.field secondaryIcon:Landroid/widget/ImageView;

.field seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

.field streamType:I

.field suppressorView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui_ex/volume/VolumePanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/volume/VolumePanel;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/volume/VolumePanel;Lcom/android/systemui_ex/volume/VolumePanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;
    .param p2, "x1"    # Lcom/android/systemui_ex/volume/VolumePanel$1;

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;-><init>(Lcom/android/systemui_ex/volume/VolumePanel;)V

    return-void
.end method
