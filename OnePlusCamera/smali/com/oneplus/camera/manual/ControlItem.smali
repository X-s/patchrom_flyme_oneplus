.class Lcom/oneplus/camera/manual/ControlItem;
.super Ljava/lang/Object;
.source "ControlItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/manual/ControlItem$ControlItemListener;
    }
.end annotation


# instance fields
.field private final m_ControlContainer:Landroid/view/View;

.field private final m_ControlImageView:Landroid/widget/ImageView;

.field private m_ControlItemListener:Lcom/oneplus/camera/manual/ControlItem$ControlItemListener;

.field private final m_ControlTextView:Landroid/widget/TextView;

.field private final m_ControlTouchView:Landroid/view/View;

.field private final m_ControlType:Lcom/oneplus/camera/manual/ControlType;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/manual/ControlItem;)Lcom/oneplus/camera/manual/ControlItem$ControlItemListener;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ControlItem;->m_ControlItemListener:Lcom/oneplus/camera/manual/ControlItem$ControlItemListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/manual/ControlItem;)Lcom/oneplus/camera/manual/ControlType;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/manual/ControlItem;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    return-object v0
.end method

.method public constructor <init>(Lcom/oneplus/camera/manual/ControlType;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 2
    .param p1, "controlType"    # Lcom/oneplus/camera/manual/ControlType;
    .param p2, "container"    # Landroid/view/View;
    .param p3, "imageView"    # Landroid/widget/ImageView;
    .param p4, "textView"    # Landroid/widget/TextView;
    .param p5, "touchView"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/oneplus/camera/manual/ControlItem;->m_ControlContainer:Landroid/view/View;

    .line 31
    iput-object p3, p0, Lcom/oneplus/camera/manual/ControlItem;->m_ControlImageView:Landroid/widget/ImageView;

    .line 32
    iput-object p4, p0, Lcom/oneplus/camera/manual/ControlItem;->m_ControlTextView:Landroid/widget/TextView;

    .line 33
    iput-object p5, p0, Lcom/oneplus/camera/manual/ControlItem;->m_ControlTouchView:Landroid/view/View;

    .line 34
    iput-object p1, p0, Lcom/oneplus/camera/manual/ControlItem;->m_ControlType:Lcom/oneplus/camera/manual/ControlType;

    .line 37
    iget-object v0, p0, Lcom/oneplus/camera/manual/ControlItem;->m_ControlTouchView:Landroid/view/View;

    new-instance v1, Lcom/oneplus/camera/manual/ControlItem$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/manual/ControlItem$1;-><init>(Lcom/oneplus/camera/manual/ControlItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getControlContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/camera/manual/ControlItem;->m_ControlContainer:Landroid/view/View;

    return-object v0
.end method

.method public setControlItemListener(Lcom/oneplus/camera/manual/ControlItem$ControlItemListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/camera/manual/ControlItem$ControlItemListener;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/oneplus/camera/manual/ControlItem;->m_ControlItemListener:Lcom/oneplus/camera/manual/ControlItem$ControlItemListener;

    .line 57
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/camera/manual/ControlItem;->m_ControlTouchView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/oneplus/camera/manual/ControlItem;->m_ControlTouchView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 64
    :cond_0
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oneplus/camera/manual/ControlItem;->m_ControlImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/oneplus/camera/manual/ControlItem;->m_ControlImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/camera/manual/ControlItem;->m_ControlContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/oneplus/camera/manual/ControlItem;->m_ControlContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 72
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oneplus/camera/manual/ControlItem;->m_ControlTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/oneplus/camera/manual/ControlItem;->m_ControlTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oneplus/camera/manual/ControlItem;->m_ControlTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/oneplus/camera/manual/ControlItem;->m_ControlTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 96
    :cond_0
    return-void
.end method
