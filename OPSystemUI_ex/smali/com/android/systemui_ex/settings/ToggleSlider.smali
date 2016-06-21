.class public Lcom/android/systemui_ex/settings/ToggleSlider;
.super Landroid/widget/RelativeLayout;
.source "ToggleSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/settings/ToggleSlider$Listener;
    }
.end annotation


# instance fields
.field private final mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mLabel:Landroid/widget/TextView;

.field private mListener:Lcom/android/systemui_ex/settings/ToggleSlider$Listener;

.field private mMirror:Lcom/android/systemui_ex/settings/ToggleSlider;

.field private mMirrorController:Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSlider:Landroid/widget/SeekBar;

.field private mToggle:Landroid/widget/CompoundButton;

.field private mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/settings/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/settings/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    new-instance v2, Lcom/android/systemui_ex/settings/ToggleSlider$1;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/settings/ToggleSlider$1;-><init>(Lcom/android/systemui_ex/settings/ToggleSlider;)V

    iput-object v2, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 142
    new-instance v2, Lcom/android/systemui_ex/settings/ToggleSlider$2;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/settings/ToggleSlider$2;-><init>(Lcom/android/systemui_ex/settings/ToggleSlider;)V

    iput-object v2, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 61
    const v2, 0x7f04005e

    invoke-static {p1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 64
    .local v1, "res":Landroid/content/res/Resources;
    sget-object v2, Lcom/android/systemui_ex/R$styleable;->ToggleSlider:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, "a":Landroid/content/res/TypedArray;
    const v2, 0x7f0f017d

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    iput-object v2, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    .line 68
    iget-object v2, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    iget-object v3, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    const v2, 0x7f0f017e

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    .line 71
    iget-object v2, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 73
    const v2, 0x7f0f017f

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    .line 74
    iget-object v2, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/settings/ToggleSlider;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/settings/ToggleSlider;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/settings/ToggleSlider$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/settings/ToggleSlider;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mListener:Lcom/android/systemui_ex/settings/ToggleSlider$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/settings/ToggleSlider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/settings/ToggleSlider;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mTracking:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui_ex/settings/ToggleSlider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/settings/ToggleSlider;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mTracking:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/settings/ToggleSlider;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/settings/ToggleSlider;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mMirror:Lcom/android/systemui_ex/settings/ToggleSlider;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/settings/ToggleSlider;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/settings/ToggleSlider;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/settings/ToggleSlider;)Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/settings/ToggleSlider;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 95
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mListener:Lcom/android/systemui_ex/settings/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mListener:Lcom/android/systemui_ex/settings/ToggleSlider$Listener;

    invoke-interface {v0, p0}, Lcom/android/systemui_ex/settings/ToggleSlider$Listener;->onInit(Lcom/android/systemui_ex/settings/ToggleSlider;)V

    .line 98
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 106
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mMirror:Lcom/android/systemui_ex/settings/ToggleSlider;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mMirror:Lcom/android/systemui_ex/settings/ToggleSlider;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/settings/ToggleSlider;->setMax(I)V

    .line 117
    :cond_0
    return-void
.end method

.method public setMirror(Lcom/android/systemui_ex/settings/ToggleSlider;)V
    .locals 2
    .param p1, "toggleSlider"    # Lcom/android/systemui_ex/settings/ToggleSlider;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mMirror:Lcom/android/systemui_ex/settings/ToggleSlider;

    .line 81
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mMirror:Lcom/android/systemui_ex/settings/ToggleSlider;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mMirror:Lcom/android/systemui_ex/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/settings/ToggleSlider;->setChecked(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mMirror:Lcom/android/systemui_ex/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/settings/ToggleSlider;->setMax(I)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mMirror:Lcom/android/systemui_ex/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/settings/ToggleSlider;->setValue(I)V

    .line 86
    :cond_0
    return-void
.end method

.method public setMirrorController(Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;)V
    .locals 0
    .param p1, "c"    # Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui_ex/statusbar/policy/BrightnessMirrorController;

    .line 90
    return-void
.end method

.method public setOnChangedListener(Lcom/android/systemui_ex/settings/ToggleSlider$Listener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/systemui_ex/settings/ToggleSlider$Listener;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mListener:Lcom/android/systemui_ex/settings/ToggleSlider$Listener;

    .line 102
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mMirror:Lcom/android/systemui_ex/settings/ToggleSlider;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/systemui_ex/settings/ToggleSlider;->mMirror:Lcom/android/systemui_ex/settings/ToggleSlider;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/settings/ToggleSlider;->setValue(I)V

    .line 124
    :cond_0
    return-void
.end method
