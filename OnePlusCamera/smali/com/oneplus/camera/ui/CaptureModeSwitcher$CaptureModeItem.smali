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
.method public constructor <init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/capturemode/CaptureMode;Landroid/view/LayoutInflater;Landroid/content/res/Resources;)V
    .locals 3
    .param p2, "captureMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p3, "inflater"    # Landroid/view/LayoutInflater;
    .param p4, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 239
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const v1, 0x7f07001e

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070023

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 241
    const v1, 0x7f070020

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 242
    const v1, 0x7f07001f

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 243
    const v1, 0x7f07001d

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 244
    iput-object p2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->captureMode:Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 245
    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->itemView:Landroid/view/View;

    .line 246
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->itemView:Landroid/view/View;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem$1;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem$1;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 279
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->itemView:Landroid/view/View;

    const v2, 0x7f0b003b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->iconImageView:Landroid/widget/ImageView;

    .line 280
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->iconImageView:Landroid/widget/ImageView;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->CAPTURE_MODES_PANEL_ICON:Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    invoke-interface {p2, v2}, Lcom/oneplus/camera/capturemode/CaptureMode;->getImage(Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->itemView:Landroid/view/View;

    const v2, 0x7f0b003c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->titleTextView:Landroid/widget/TextView;

    .line 282
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->titleTextView:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/oneplus/camera/capturemode/CaptureMode;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->m_MonitorClick:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;
    .param p1, "x1"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->m_MonitorClick:Z

    return p1
.end method
