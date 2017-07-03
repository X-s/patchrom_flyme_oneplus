.class Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MediaSetListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/MediaSetListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSetListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/MediaSetListFragment;


# direct methods
.method private constructor <init>(Lcom/oneplus/gallery/MediaSetListFragment;)V
    .locals 0

    .prologue
    .line 1942
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/MediaSetListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p2, "x1"    # Lcom/oneplus/gallery/MediaSetListFragment$1;

    .prologue
    .line 1942
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;
    invoke-static {v0}, Lcom/oneplus/gallery/MediaSetListFragment;->access$3700(Lcom/oneplus/gallery/MediaSetListFragment;)Lcom/oneplus/gallery/media/MediaSetList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1947
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;
    invoke-static {v0}, Lcom/oneplus/gallery/MediaSetListFragment;->access$3700(Lcom/oneplus/gallery/MediaSetListFragment;)Lcom/oneplus/gallery/media/MediaSetList;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaSetList;->size()I

    move-result v0

    .line 1949
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;
    invoke-static {v0}, Lcom/oneplus/gallery/MediaSetListFragment;->access$3700(Lcom/oneplus/gallery/MediaSetListFragment;)Lcom/oneplus/gallery/media/MediaSetList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1955
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;
    invoke-static {v0}, Lcom/oneplus/gallery/MediaSetListFragment;->access$3700(Lcom/oneplus/gallery/MediaSetListFragment;)Lcom/oneplus/gallery/media/MediaSetList;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oneplus/gallery/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1957
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1962
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1969
    if-nez p2, :cond_3

    .line 1971
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_Activity:Landroid/app/Activity;
    invoke-static {v11}, Lcom/oneplus/gallery/MediaSetListFragment;->access$4700(Lcom/oneplus/gallery/MediaSetListFragment;)Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1972
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v11, 0x7f03001b

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1974
    new-instance v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;-><init>(Lcom/oneplus/gallery/MediaSetListFragment$1;)V

    .line 1975
    .local v10, "viewInfo":Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;
    const v11, 0x7f060075

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    iput-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->descriptionContainer:Landroid/widget/RelativeLayout;

    .line 1976
    const v11, 0x7f060078

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->titleText:Landroid/widget/TextView;

    .line 1977
    const v11, 0x7f06007a

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    .line 1978
    const v11, 0x7f06007c

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->selectedIcon:Landroid/widget/ImageView;

    .line 1979
    const v11, 0x7f060079

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    .line 1980
    const v11, 0x7f060076

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaSetIcon:Landroid/widget/ImageView;

    .line 1982
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1987
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery/media/MediaSet;

    .line 1990
    .local v4, "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    iput-object v4, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    .line 1991
    move/from16 v0, p1

    iput v0, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->position:I

    .line 1993
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->titleText:Landroid/widget/TextView;

    sget-object v12, Lcom/oneplus/gallery/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v12}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1994
    sget-object v11, Lcom/oneplus/gallery/media/MediaSet;->PROP_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v11}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1995
    .local v6, "photoCount":Ljava/lang/Integer;
    sget-object v11, Lcom/oneplus/gallery/media/MediaSet;->PROP_VIDEO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v11}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1998
    .local v8, "videoCount":Ljava/lang/Integer;
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->titleText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    invoke-virtual {v12}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v12

    const-string v13, "media_set_list_item_title"

    invoke-virtual {v12, v13}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1999
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->descriptionContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    invoke-virtual {v12}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v12

    const-string v13, "media_set_list_item_description_container_background"

    invoke-virtual {v12, v13}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2000
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    invoke-virtual {v12}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v12

    const-string v13, "media_set_list_item_size"

    invoke-virtual {v12, v13}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2003
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->updateIcon(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;)V
    invoke-static {v11, v4, v10}, Lcom/oneplus/gallery/MediaSetListFragment;->access$4900(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;)V

    .line 2005
    if-nez v6, :cond_0

    .line 2006
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2008
    :cond_0
    if-nez v8, :cond_1

    .line 2009
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2014
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x1

    if-gt v11, v12, :cond_4

    .line 2015
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    const v12, 0x7f09007d

    invoke-virtual {v11, v12}, Lcom/oneplus/gallery/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2019
    .local v7, "photoCountStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x1

    if-gt v11, v12, :cond_5

    .line 2020
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    const v12, 0x7f09007f

    invoke-virtual {v11, v12}, Lcom/oneplus/gallery/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2024
    .local v9, "videoCountStr":Ljava/lang/String;
    :goto_2
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2025
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_6

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_6

    .line 2026
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    const v13, 0x7f090081

    invoke-virtual {v12, v13}, Lcom/oneplus/gallery/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const/4 v14, 0x1

    aput-object v9, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2034
    :goto_3
    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;
    invoke-static {}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1200()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery/media/MediaSet;)Ljava/lang/String;
    invoke-static {v12, v4}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1900(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/oneplus/cache/HybridBitmapLruCache;->get(Ljava/io/Serializable;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2036
    .local v2, "coverImage":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_9

    .line 2039
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2040
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2041
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    iget-object v12, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v13, 0x0

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V
    invoke-static {v11, v12, v13}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5000(Lcom/oneplus/gallery/MediaSetListFragment;Landroid/view/View;Z)V

    .line 2083
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_IsVisibleMediaSetsCheckScheduled:Z
    invoke-static {v11}, Lcom/oneplus/gallery/MediaSetListFragment;->access$000(Lcom/oneplus/gallery/MediaSetListFragment;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 2085
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    const/4 v12, 0x1

    # setter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_IsVisibleMediaSetsCheckScheduled:Z
    invoke-static {v11, v12}, Lcom/oneplus/gallery/MediaSetListFragment;->access$002(Lcom/oneplus/gallery/MediaSetListFragment;Z)Z

    .line 2086
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_CheckVisibleMediaSetsRunnable:Ljava/lang/Runnable;
    invoke-static {v12}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5300(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/Runnable;

    move-result-object v12

    const-wide/16 v14, 0x64

    invoke-static {v11, v12, v14, v15}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    .line 2089
    :cond_2
    iget-object v12, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->selectedIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_IsBlackMode:Z
    invoke-static {v11}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5200(Lcom/oneplus/gallery/MediaSetListFragment;)Z

    move-result v11

    if-eqz v11, :cond_c

    const v11, 0x7f020065

    :goto_5
    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2090
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    sget-object v12, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v11, v12}, Lcom/oneplus/gallery/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 2092
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/oneplus/gallery/MediaSetListFragment;->access$4300(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 2094
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->selectedIcon:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2095
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const v12, 0x3e99999a    # 0.3f

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2109
    :goto_6
    return-object p2

    .line 1985
    .end local v2    # "coverImage":Landroid/graphics/Bitmap;
    .end local v4    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    .end local v6    # "photoCount":Ljava/lang/Integer;
    .end local v7    # "photoCountStr":Ljava/lang/String;
    .end local v8    # "videoCount":Ljava/lang/Integer;
    .end local v9    # "videoCountStr":Ljava/lang/String;
    .end local v10    # "viewInfo":Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;

    .restart local v10    # "viewInfo":Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;
    goto/16 :goto_0

    .line 2017
    .restart local v4    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    .restart local v6    # "photoCount":Ljava/lang/Integer;
    .restart local v8    # "videoCount":Ljava/lang/Integer;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    const v12, 0x7f09007e

    invoke-virtual {v11, v12}, Lcom/oneplus/gallery/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "photoCountStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 2022
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    const v12, 0x7f090080

    invoke-virtual {v11, v12}, Lcom/oneplus/gallery/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "videoCountStr":Ljava/lang/String;
    goto/16 :goto_2

    .line 2027
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_7

    .line 2028
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2029
    :cond_7
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_8

    .line 2030
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2032
    :cond_8
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 2045
    .restart local v2    # "coverImage":Landroid/graphics/Bitmap;
    :cond_9
    sget-object v11, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v11}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2046
    .local v5, "mediaSetSize":Ljava/lang/Integer;
    if-nez v5, :cond_a

    .line 2048
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2049
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    iget-object v12, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v13, 0x0

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V
    invoke-static {v11, v12, v13}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5000(Lcom/oneplus/gallery/MediaSetListFragment;Landroid/view/View;Z)V

    goto/16 :goto_4

    .line 2051
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_b

    .line 2053
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2055
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    const/4 v12, 0x1

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->createCoverImage(Lcom/oneplus/gallery/media/MediaSet;Z)V
    invoke-static {v11, v4, v12}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5100(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;Z)V

    .line 2056
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    iget-object v12, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v13, 0x1

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V
    invoke-static {v11, v12, v13}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5000(Lcom/oneplus/gallery/MediaSetListFragment;Landroid/view/View;Z)V

    goto/16 :goto_4

    .line 2060
    :cond_b
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    new-instance v12, Lcom/oneplus/gallery/MediaSetListFragment$EmptyCoverDrawable;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_IsBlackMode:Z
    invoke-static {v14}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5200(Lcom/oneplus/gallery/MediaSetListFragment;)Z

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/oneplus/gallery/MediaSetListFragment$EmptyCoverDrawable;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2061
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2063
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    iget-object v12, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v13, 0x0

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V
    invoke-static {v11, v12, v13}, Lcom/oneplus/gallery/MediaSetListFragment;->access$5000(Lcom/oneplus/gallery/MediaSetListFragment;Landroid/view/View;Z)V

    goto/16 :goto_4

    .line 2089
    .end local v5    # "mediaSetSize":Ljava/lang/Integer;
    :cond_c
    const v11, 0x7f020066

    goto/16 :goto_5

    .line 2099
    :cond_d
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->selectedIcon:Landroid/widget/ImageView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2100
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_6

    .line 2105
    :cond_e
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->selectedIcon:Landroid/widget/ImageView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2106
    iget-object v11, v10, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_6
.end method
