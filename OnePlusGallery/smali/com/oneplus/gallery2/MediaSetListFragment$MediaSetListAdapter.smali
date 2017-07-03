.class Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MediaSetListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/MediaSetListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSetListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/MediaSetListFragment;


# direct methods
.method private constructor <init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V
    .locals 0

    .prologue
    .line 1873
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/MediaSetListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p2, "x1"    # Lcom/oneplus/gallery2/MediaSetListFragment$1;

    .prologue
    .line 1873
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$3900(Lcom/oneplus/gallery2/MediaSetListFragment;)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1878
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$3900(Lcom/oneplus/gallery2/MediaSetListFragment;)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaSetList;->size()I

    move-result v0

    .line 1880
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
    .line 1885
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$3900(Lcom/oneplus/gallery2/MediaSetListFragment;)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$3900(Lcom/oneplus/gallery2/MediaSetListFragment;)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1888
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
    .line 1893
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1900
    if-nez p2, :cond_3

    .line 1902
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_Activity:Landroid/app/Activity;
    invoke-static {v12}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$4900(Lcom/oneplus/gallery2/MediaSetListFragment;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1903
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v12, 0x7f03001b

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v4, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1905
    new-instance v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment$1;)V

    .line 1906
    .local v11, "viewInfo":Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;
    const v12, 0x7f060075

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    iput-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->descriptionContainer:Landroid/widget/RelativeLayout;

    .line 1907
    const v12, 0x7f060078

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->titleText:Landroid/widget/TextView;

    .line 1908
    const v12, 0x7f06007a

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    .line 1909
    const v12, 0x7f06007c

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->selectedIcon:Landroid/widget/ImageView;

    .line 1910
    const v12, 0x7f060079

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    .line 1911
    const v12, 0x7f060076

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaSetIcon:Landroid/widget/ImageView;

    .line 1913
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1918
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/MediaSet;

    .line 1921
    .local v5, "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    iput-object v5, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    .line 1922
    move/from16 v0, p1

    iput v0, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->position:I

    .line 1924
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->titleText:Landroid/widget/TextView;

    sget-object v13, Lcom/oneplus/gallery2/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v13}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1925
    sget-object v12, Lcom/oneplus/gallery2/media/MediaSet;->PROP_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v12}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1926
    .local v7, "photoCount":Ljava/lang/Integer;
    sget-object v12, Lcom/oneplus/gallery2/media/MediaSet;->PROP_VIDEO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v12}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1929
    .local v9, "videoCount":Ljava/lang/Integer;
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->titleText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-virtual {v13}, Lcom/oneplus/gallery2/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v13

    const-string v14, "media_set_list_item_title"

    invoke-virtual {v13, v14}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1930
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->descriptionContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-virtual {v13}, Lcom/oneplus/gallery2/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v13

    const-string v14, "media_set_list_item_description_container_background"

    invoke-virtual {v13, v14}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1931
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-virtual {v13}, Lcom/oneplus/gallery2/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v13

    const-string v14, "media_set_list_item_size"

    invoke-virtual {v13, v14}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1934
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->updateIcon(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;)V
    invoke-static {v12, v5, v11}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$5100(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;)V

    .line 1936
    if-nez v7, :cond_0

    .line 1937
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1939
    :cond_0
    if-nez v9, :cond_1

    .line 1940
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1945
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    if-gt v12, v13, :cond_4

    .line 1946
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    const v13, 0x7f09007d

    invoke-virtual {v12, v13}, Lcom/oneplus/gallery2/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1950
    .local v8, "photoCountStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    if-gt v12, v13, :cond_5

    .line 1951
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    const v13, 0x7f09007f

    invoke-virtual {v12, v13}, Lcom/oneplus/gallery2/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1955
    .local v10, "videoCountStr":Ljava/lang/String;
    :goto_2
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1956
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_6

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_6

    .line 1957
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    const v14, 0x7f090081

    invoke-virtual {v13, v14}, Lcom/oneplus/gallery2/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/4 v15, 0x1

    aput-object v10, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1965
    :goto_3
    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;
    invoke-static {}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$1800()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery2/media/MediaSet;)Ljava/lang/String;
    invoke-static {v13, v5}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$1700(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/media/MediaSet;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v13, v14, v0, v1}, Lcom/oneplus/cache/HybridBitmapLruCache;->get(Ljava/io/Serializable;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1967
    .local v3, "coverImage":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_9

    .line 1970
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1971
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1972
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    iget-object v13, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v14, 0x0

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V
    invoke-static {v12, v13, v14}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$5200(Lcom/oneplus/gallery2/MediaSetListFragment;Landroid/view/View;Z)V

    .line 2001
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsVisibleMediaSetsCheckScheduled:Z
    invoke-static {v12}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$000(Lcom/oneplus/gallery2/MediaSetListFragment;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 2003
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    const/4 v13, 0x1

    # setter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsVisibleMediaSetsCheckScheduled:Z
    invoke-static {v12, v13}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$002(Lcom/oneplus/gallery2/MediaSetListFragment;Z)Z

    .line 2004
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_CheckVisibleMediaSetsRunnable:Ljava/lang/Runnable;
    invoke-static {v13}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$5500(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/lang/Runnable;

    move-result-object v13

    const-wide/16 v14, 0x64

    invoke-static {v12, v13, v14, v15}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    .line 2007
    :cond_2
    iget-object v13, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->selectedIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsBlackMode:Z
    invoke-static {v12}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$5400(Lcom/oneplus/gallery2/MediaSetListFragment;)Z

    move-result v12

    if-eqz v12, :cond_d

    const v12, 0x7f020065

    :goto_5
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2008
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    sget-object v13, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v12, v13}, Lcom/oneplus/gallery2/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 2010
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$4500(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 2012
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->selectedIcon:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2013
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const v13, 0x3e99999a    # 0.3f

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2027
    :goto_6
    return-object p2

    .line 1916
    .end local v3    # "coverImage":Landroid/graphics/Bitmap;
    .end local v5    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    .end local v7    # "photoCount":Ljava/lang/Integer;
    .end local v8    # "photoCountStr":Ljava/lang/String;
    .end local v9    # "videoCount":Ljava/lang/Integer;
    .end local v10    # "videoCountStr":Ljava/lang/String;
    .end local v11    # "viewInfo":Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;

    .restart local v11    # "viewInfo":Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;
    goto/16 :goto_0

    .line 1948
    .restart local v5    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    .restart local v7    # "photoCount":Ljava/lang/Integer;
    .restart local v9    # "videoCount":Ljava/lang/Integer;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    const v13, 0x7f09007e

    invoke-virtual {v12, v13}, Lcom/oneplus/gallery2/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "photoCountStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 1953
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    const v13, 0x7f090080

    invoke-virtual {v12, v13}, Lcom/oneplus/gallery2/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "videoCountStr":Ljava/lang/String;
    goto/16 :goto_2

    .line 1958
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_7

    .line 1959
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1960
    :cond_7
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_8

    .line 1961
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1963
    :cond_8
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1976
    .restart local v3    # "coverImage":Landroid/graphics/Bitmap;
    :cond_9
    sget-object v12, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v12}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1977
    .local v6, "mediaSetSize":Ljava/lang/Integer;
    if-nez v6, :cond_a

    .line 1979
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1980
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    iget-object v13, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v14, 0x0

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V
    invoke-static {v12, v13, v14}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$5200(Lcom/oneplus/gallery2/MediaSetListFragment;Landroid/view/View;Z)V

    goto/16 :goto_4

    .line 1982
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_c

    .line 1984
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageTempBase:Ljava/util/Map;
    invoke-static {v12}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$3200(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 1985
    .local v2, "baseCover":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_b

    .line 1986
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1989
    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    const/4 v13, 0x1

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->createCoverImage(Lcom/oneplus/gallery2/media/MediaSet;Z)V
    invoke-static {v12, v5, v13}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$5300(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/media/MediaSet;Z)V

    .line 1990
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    iget-object v13, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v14, 0x1

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V
    invoke-static {v12, v13, v14}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$5200(Lcom/oneplus/gallery2/MediaSetListFragment;Landroid/view/View;Z)V

    goto/16 :goto_4

    .line 1988
    :cond_b
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 1994
    .end local v2    # "baseCover":Landroid/graphics/Bitmap;
    :cond_c
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    new-instance v13, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;

    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsBlackMode:Z
    invoke-static {v15}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$5400(Lcom/oneplus/gallery2/MediaSetListFragment;)Z

    move-result v15

    invoke-direct {v13, v14, v15}, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1995
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1996
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    iget-object v13, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v14, 0x0

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V
    invoke-static {v12, v13, v14}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$5200(Lcom/oneplus/gallery2/MediaSetListFragment;Landroid/view/View;Z)V

    goto/16 :goto_4

    .line 2007
    .end local v6    # "mediaSetSize":Ljava/lang/Integer;
    :cond_d
    const v12, 0x7f020066

    goto/16 :goto_5

    .line 2017
    :cond_e
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->selectedIcon:Landroid/widget/ImageView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2018
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_6

    .line 2023
    :cond_f
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->selectedIcon:Landroid/widget/ImageView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2024
    iget-object v12, v11, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_6
.end method
