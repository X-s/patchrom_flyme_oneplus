.class public Lcom/android/systemui_ex/qs/tiles/DataUsageDetailView;
.super Landroid/widget/LinearLayout;
.source "DataUsageDetailView.java"


# instance fields
.field private final FORMAT:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui_ex/qs/tiles/DataUsageDetailView;->FORMAT:Ljava/text/DecimalFormat;

    .line 47
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v2, 0x7f0d004d

    .line 51
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 52
    const v0, 0x1020016

    invoke-static {p0, v0, v2}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 53
    const v0, 0x7f0f0037

    const v1, 0x7f0d004e

    invoke-static {p0, v0, v1}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 54
    const v0, 0x7f0f0039

    invoke-static {p0, v0, v2}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 56
    const v0, 0x7f0f003a

    invoke-static {p0, v0, v2}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 58
    const v0, 0x7f0f003b

    invoke-static {p0, v0, v2}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 59
    const v0, 0x7f0f003c

    invoke-static {p0, v0, v2}, Lcom/android/systemui_ex/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 61
    return-void
.end method
