.class Lcom/oneplus/settings/ui/OPSeekBarPreference$1;
.super Ljava/lang/Object;
.source "OPSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPSeekBarPreference;->initSeekBar(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPSeekBarPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/ui/OPSeekBarPreference;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPSeekBarPreference$1;->this$0:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPSeekBarPreference$1;->this$0:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPSeekBarPreference;->mOPColorModeSeekBarChangeListener:Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPSeekBarPreference$1;->this$0:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPSeekBarPreference;->mOPColorModeSeekBarChangeListener:Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 74
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPSeekBarPreference$1;->this$0:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPSeekBarPreference;->mOPColorModeSeekBarChangeListener:Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPSeekBarPreference$1;->this$0:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPSeekBarPreference;->mOPColorModeSeekBarChangeListener:Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;

    invoke-interface {v0, p1}, Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 82
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPSeekBarPreference$1;->this$0:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPSeekBarPreference;->mOPColorModeSeekBarChangeListener:Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPSeekBarPreference$1;->this$0:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPSeekBarPreference;->mOPColorModeSeekBarChangeListener:Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;

    invoke-interface {v0, p1}, Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 90
    :cond_0
    return-void
.end method
