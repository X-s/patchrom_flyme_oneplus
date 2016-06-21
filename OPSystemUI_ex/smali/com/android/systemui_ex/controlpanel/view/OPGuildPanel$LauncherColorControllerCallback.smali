.class Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$LauncherColorControllerCallback;
.super Ljava/lang/Object;
.source "OPGuildPanel.java"

# interfaces
.implements Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherColorControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$LauncherColorControllerCallback;->this$0:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;
    .param p2, "x1"    # Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$1;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$LauncherColorControllerCallback;-><init>(Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;)V

    return-void
.end method


# virtual methods
.method public onLauncherContentColorChange(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    .line 143
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->isBlackTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$LauncherColorControllerCallback;->this$0:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    # invokes: Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->getColorStateList(I)Landroid/content/res/ColorStateList;
    invoke-static {v2, p1}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->access$200(Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 145
    .local v1, "thumbTintList":Landroid/content/res/ColorStateList;
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$LauncherColorControllerCallback;->this$0:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->access$300(Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 146
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$LauncherColorControllerCallback;->this$0:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->access$300(Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$LauncherColorControllerCallback;->this$0:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$LauncherColorControllerCallback;->this$0:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mSeekBarProgessOpacity:I
    invoke-static {v4}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->access$400(Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;)I

    move-result v4

    and-int/2addr v4, p1

    # invokes: Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->getColorStateList(I)Landroid/content/res/ColorStateList;
    invoke-static {v3, v4}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->access$200(Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 147
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$LauncherColorControllerCallback;->this$0:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->access$300(Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 148
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_0

    .line 149
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 152
    .end local v1    # "thumbTintList":Landroid/content/res/ColorStateList;
    :cond_0
    return-void
.end method

.method public onLauncherMainColorChange(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 136
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->isBlackTheme()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$LauncherColorControllerCallback;->this$0:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->mBrightnessView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->access$100(Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 139
    :cond_0
    return-void
.end method
