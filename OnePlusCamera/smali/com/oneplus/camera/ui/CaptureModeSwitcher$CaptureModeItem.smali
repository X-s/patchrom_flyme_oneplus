.class final Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CaptureModeItem"
.end annotation


# instance fields
.field public final captureMode:Lcom/oneplus/camera/capturemode/CaptureMode;

.field public iconImageView:Landroid/widget/ImageView;

.field public itemView:Landroid/view/View;

.field private m_MonitorClick:Z

.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

.field public titleTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->m_MonitorClick:Z

    return v0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->m_MonitorClick:Z

    return p1
.end method

.method public constructor <init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/capturemode/CaptureMode;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Lcom/oneplus/base/Rotation;)V
    .locals 5
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;
    .param p2, "captureMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p3, "inflater"    # Landroid/view/LayoutInflater;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v4, -0x2

    .line 375
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    invoke-virtual {p5}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 383
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    const v3, 0x7f09007a

    invoke-virtual {p4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 384
    const v3, 0x7f09007c

    invoke-virtual {p4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 385
    const v3, 0x7f09007b

    invoke-virtual {p4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 386
    const v3, 0x7f090079

    invoke-virtual {p4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 388
    iput-object p2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->captureMode:Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 389
    const v3, 0x7f03001c

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->itemView:Landroid/view/View;

    .line 390
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->itemView:Landroid/view/View;

    new-instance v4, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem$1;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem$1;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 424
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->itemView:Landroid/view/View;

    const v4, 0x7f0a009f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->iconImageView:Landroid/widget/ImageView;

    .line 425
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->iconImageView:Landroid/widget/ImageView;

    sget-object v4, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->CAPTURE_MODES_PANEL_ICON:Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    invoke-interface {p2, v4}, Lcom/oneplus/camera/capturemode/CaptureMode;->getImage(Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 426
    const v3, 0x7f090077

    invoke-virtual {p4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 427
    .local v0, "iconSize":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 428
    .local v1, "imagelp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p5}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 429
    const v3, 0x7f090075

    invoke-virtual {p4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 432
    :goto_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->itemView:Landroid/view/View;

    const v4, 0x7f0a00a0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->titleTextView:Landroid/widget/TextView;

    .line 435
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->titleTextView:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/oneplus/camera/capturemode/CaptureMode;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    return-void

    .line 382
    .end local v0    # "iconSize":I
    .end local v1    # "imagelp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x7f090072

    invoke-virtual {p4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_0

    .line 431
    .restart local v0    # "iconSize":I
    .restart local v1    # "imagelp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const v3, 0x7f090076

    invoke-virtual {p4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_1
.end method
