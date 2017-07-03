.class final Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/MediaSetListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewInfo"
.end annotation


# instance fields
.field public coverImage:Landroid/widget/ImageView;

.field public descriptionContainer:Landroid/widget/RelativeLayout;

.field public mediaCountText:Landroid/widget/TextView;

.field public mediaSet:Lcom/oneplus/gallery/media/MediaSet;

.field public mediaSetIcon:Landroid/widget/ImageView;

.field public position:I

.field public selectedIcon:Landroid/widget/ImageView;

.field public titleText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gallery/MediaSetListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment$1;

    .prologue
    .line 2623
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;-><init>()V

    return-void
.end method
