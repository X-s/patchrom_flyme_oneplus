.class public Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;
.super Landroid/widget/TextView;
.source "ThreeKeyTipsView.java"

# interfaces
.implements Lcom/android/systemui_ex/DemoMode;
.implements Lcom/android/systemui_ex/statusbar/StatusbarColorObserver;


# static fields
.field private static final mDarkColor:I

.field private static final mWhiteColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "#B3000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;->mDarkColor:I

    .line 18
    const-string v0, "#CCFFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;->mWhiteColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/systemui_ex/R$styleable;->Clock:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->isUsingDarkIcon()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;->onStatusbarColorChange(Z)V

    .line 35
    return-void
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 50
    return-void
.end method

.method public onStatusbarColorChange(Z)V
    .locals 1
    .param p1, "isUsingDarkColor"    # Z

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    sget v0, Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;->mDarkColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;->setTextColor(I)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    sget v0, Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;->mWhiteColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/ThreeKeyTipsView;->setTextColor(I)V

    goto :goto_0
.end method
