.class Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MediaSetPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/MediaSetPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSetListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;


# direct methods
.method private constructor <init>(Lcom/oneplus/gallery2/MediaSetPickerFragment;)V
    .locals 0

    .prologue
    .line 876
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gallery2/MediaSetPickerFragment;Lcom/oneplus/gallery2/MediaSetPickerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/gallery2/MediaSetPickerFragment;
    .param p2, "x1"    # Lcom/oneplus/gallery2/MediaSetPickerFragment$1;

    .prologue
    .line 876
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;-><init>(Lcom/oneplus/gallery2/MediaSetPickerFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetPickerFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$800(Lcom/oneplus/gallery2/MediaSetPickerFragment;)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetPickerFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$800(Lcom/oneplus/gallery2/MediaSetPickerFragment;)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaSetList;->size()I

    move-result v0

    .line 884
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
    .line 890
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetPickerFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$800(Lcom/oneplus/gallery2/MediaSetPickerFragment;)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetPickerFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$800(Lcom/oneplus/gallery2/MediaSetPickerFragment;)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 893
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
    .line 899
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 907
    if-nez p2, :cond_1

    .line 909
    iget-object v9, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    invoke-virtual {v9}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oneplus/gallery2/GalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 910
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f03001c

    const/4 v10, 0x0

    invoke-virtual {v2, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 912
    new-instance v8, Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;-><init>(Lcom/oneplus/gallery2/MediaSetPickerFragment$1;)V

    .line 913
    .local v8, "viewInfo":Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;
    const v9, 0x7f060079

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;->countText:Landroid/widget/TextView;

    .line 914
    const v9, 0x7f06007e

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v8, Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;->thumbnail:Landroid/widget/ImageView;

    .line 915
    const v9, 0x7f060078

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;->titleText:Landroid/widget/TextView;

    .line 916
    const v9, 0x7f06007d

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v8, Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;->itemContainer:Landroid/view/View;

    .line 917
    const v9, 0x7f06007f

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v8, Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;->bottomLine:Landroid/view/View;

    .line 919
    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 924
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/MediaSet;

    .line 927
    .local v5, "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    iput-object v5, v8, Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    .line 930
    iget-object v9, v8, Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;->titleText:Landroid/widget/TextView;

    sget-object v10, Lcom/oneplus/gallery2/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v10}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 933
    iget-object v9, v8, Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;->itemContainer:Landroid/view/View;

    iget-object v10, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    invoke-virtual {v10}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v10

    const-string v11, "media_picker_list_item_background"

    invoke-virtual {v10, v11}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 934
    iget-object v9, v8, Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;->bottomLine:Landroid/view/View;

    iget-object v10, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    invoke-virtual {v10}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v10

    const-string v11, "media_picker_list_item_bottom_line"

    invoke-virtual {v10, v11}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 935
    iget-object v9, v8, Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;->titleText:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    invoke-virtual {v10}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v10

    const-string v11, "media_picker_list_item_title"

    invoke-virtual {v10, v11}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 936
    iget-object v9, v8, Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;->countText:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    invoke-virtual {v10}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v10

    const-string v11, "media_picker_list_item_count"

    invoke-virtual {v10, v11}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 939
    const/4 v4, 0x0

    .line 940
    .local v4, "mediaCountStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 941
    .local v3, "isMediSetEmpty":Z
    sget-object v9, Lcom/oneplus/gallery2/MediaSetPickerFragment$8;->$SwitchMap$com$oneplus$gallery2$media$MediaType:[I

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/MediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 966
    :goto_1
    iget-object v9, v8, Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;->countText:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 969
    iget-object v9, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetPickerFragment;->m_CoverMediaTable:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$1800(Lcom/oneplus/gallery2/MediaSetPickerFragment;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 970
    .local v1, "coverMedia":Lcom/oneplus/gallery2/media/Media;
    if-eqz v1, :cond_9

    .line 972
    iget-object v9, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetPickerFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    invoke-static {v9}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$2100(Lcom/oneplus/gallery2/MediaSetPickerFragment;)Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    move-result-object v9

    sget-object v10, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SMALL:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    invoke-interface {v9, v1, v10}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->getCachedThumbnailImage(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 973
    .local v0, "cacheThumb":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_8

    .line 974
    iget-object v9, v8, Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 986
    .end local v0    # "cacheThumb":Landroid/graphics/Bitmap;
    :goto_2
    if-eqz v3, :cond_0

    .line 987
    iget-object v10, v8, Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;->thumbnail:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    invoke-virtual {v9}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v9

    sget-object v11, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v9, v11}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_a

    const v9, 0x7f0200ab

    :goto_3
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 989
    :cond_0
    return-object p2

    .line 922
    .end local v1    # "coverMedia":Lcom/oneplus/gallery2/media/Media;
    .end local v3    # "isMediSetEmpty":Z
    .end local v4    # "mediaCountStr":Ljava/lang/String;
    .end local v5    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    .end local v8    # "viewInfo":Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;

    .restart local v8    # "viewInfo":Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;
    goto/16 :goto_0

    .line 944
    .restart local v3    # "isMediSetEmpty":Z
    .restart local v4    # "mediaCountStr":Ljava/lang/String;
    .restart local v5    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :pswitch_0
    sget-object v9, Lcom/oneplus/gallery2/media/MediaSet;->PROP_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v9}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 945
    .local v6, "photoCount":Ljava/lang/Integer;
    if-nez v6, :cond_2

    .line 946
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 947
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_3

    .line 948
    const/4 v3, 0x1

    .line 949
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x1

    if-gt v9, v10, :cond_4

    .line 950
    iget-object v9, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    const v10, 0x7f09007d

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 952
    :cond_4
    iget-object v9, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    const v10, 0x7f09007e

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 953
    goto/16 :goto_1

    .line 955
    .end local v6    # "photoCount":Ljava/lang/Integer;
    :pswitch_1
    sget-object v9, Lcom/oneplus/gallery2/media/MediaSet;->PROP_VIDEO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v9}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 956
    .local v7, "videoCount":Ljava/lang/Integer;
    if-nez v7, :cond_5

    .line 957
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 958
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_6

    .line 959
    const/4 v3, 0x1

    .line 960
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x1

    if-gt v9, v10, :cond_7

    .line 961
    iget-object v9, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    const v10, 0x7f09007f

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 963
    :cond_7
    iget-object v9, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    const v10, 0x7f090080

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 977
    .end local v7    # "videoCount":Ljava/lang/Integer;
    .restart local v0    # "cacheThumb":Landroid/graphics/Bitmap;
    .restart local v1    # "coverMedia":Lcom/oneplus/gallery2/media/Media;
    :cond_8
    iget-object v9, v8, Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;->thumbnail:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 978
    iget-object v9, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    const/4 v10, 0x1

    # invokes: Lcom/oneplus/gallery2/MediaSetPickerFragment;->createCoverImage(Lcom/oneplus/gallery2/media/MediaSet;Z)V
    invoke-static {v9, v5, v10}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$2600(Lcom/oneplus/gallery2/MediaSetPickerFragment;Lcom/oneplus/gallery2/media/MediaSet;Z)V

    goto/16 :goto_2

    .line 983
    .end local v0    # "cacheThumb":Landroid/graphics/Bitmap;
    :cond_9
    iget-object v9, v8, Lcom/oneplus/gallery2/MediaSetPickerFragment$ViewInfo;->thumbnail:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 984
    iget-object v9, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    const/4 v10, 0x1

    # invokes: Lcom/oneplus/gallery2/MediaSetPickerFragment;->createCoverImage(Lcom/oneplus/gallery2/media/MediaSet;Z)V
    invoke-static {v9, v5, v10}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$2600(Lcom/oneplus/gallery2/MediaSetPickerFragment;Lcom/oneplus/gallery2/media/MediaSet;Z)V

    goto/16 :goto_2

    .line 987
    :cond_a
    const v9, 0x7f0200ac

    goto/16 :goto_3

    .line 941
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
