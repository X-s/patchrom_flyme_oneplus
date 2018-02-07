.class public Lcom/android/settings_ex/display/AppGridView;
.super Landroid/widget/GridView;
.source "AppGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/display/AppGridView$ActivityEntry;,
        Lcom/android/settings_ex/display/AppGridView$AppsAdapter;
    }
.end annotation


# static fields
.field private static final MAX_APP_COUNT:I = 0x1e


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/display/AppGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/display/AppGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_ex/display/AppGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleResId"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/display/AppGridView;->setNumColumns(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ex/display/AppGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 58
    const v2, 0x7f0f0255

    .line 57
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 59
    .local v0, "columnWidth":I
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/display/AppGridView;->setColumnWidth(I)V

    .line 61
    new-instance v1, Lcom/android/settings_ex/display/AppGridView$AppsAdapter;

    const v2, 0x7f04017b

    .line 62
    const v3, 0x1020014

    const v4, 0x1020007

    .line 61
    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/settings_ex/display/AppGridView$AppsAdapter;-><init>(Landroid/content/Context;III)V

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/display/AppGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    return-void
.end method
