.class final Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;
.super Ljava/lang/Object;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/menu/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewInfo"
.end annotation


# instance fields
.field public bottomLine:Landroid/view/View;

.field public isUpdatingViews:Z

.field public menuContainer:Landroid/widget/LinearLayout;

.field public menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field public radioButton:Landroid/widget/RadioButton;

.field public subTitleTextView:Landroid/widget/TextView;

.field public summaryTextView:Landroid/widget/TextView;

.field public switchView:Landroid/widget/Switch;

.field public titleTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;-><init>()V

    return-void
.end method
