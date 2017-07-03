.class final Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;
.super Ljava/lang/Object;
.source "MediaSetPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/MediaSetPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewInfo"
.end annotation


# instance fields
.field public bottomLine:Landroid/view/View;

.field public countText:Landroid/widget/TextView;

.field public itemContainer:Landroid/view/View;

.field public mediaSet:Lcom/oneplus/gallery/media/MediaSet;

.field public thumbnail:Landroid/widget/ImageView;

.field public titleText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gallery/MediaSetPickerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment$1;

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;-><init>()V

    return-void
.end method
