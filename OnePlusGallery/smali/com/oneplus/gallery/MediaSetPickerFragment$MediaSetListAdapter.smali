.class Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MediaSetPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/MediaSetPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSetListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;


# direct methods
.method private constructor <init>(Lcom/oneplus/gallery/MediaSetPickerFragment;)V
    .locals 0

    .prologue
    .line 874
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gallery/MediaSetPickerFragment;Lcom/oneplus/gallery/MediaSetPickerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment;
    .param p2, "x1"    # Lcom/oneplus/gallery/MediaSetPickerFragment$1;

    .prologue
    .line 874
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;-><init>(Lcom/oneplus/gallery/MediaSetPickerFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;
    invoke-static {v0}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$800(Lcom/oneplus/gallery/MediaSetPickerFragment;)Lcom/oneplus/gallery/media/MediaSetList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;
    invoke-static {v0}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$800(Lcom/oneplus/gallery/MediaSetPickerFragment;)Lcom/oneplus/gallery/media/MediaSetList;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaSetList;->size()I

    move-result v0

    .line 882
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
    .line 888
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;
    invoke-static {v0}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$800(Lcom/oneplus/gallery/MediaSetPickerFragment;)Lcom/oneplus/gallery/media/MediaSetList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetPickerFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;
    invoke-static {v0}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$800(Lcom/oneplus/gallery/MediaSetPickerFragment;)Lcom/oneplus/gallery/media/MediaSetList;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oneplus/gallery/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 891
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
    .line 897
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 905
    if-nez p2, :cond_2

    .line 907
    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    invoke-virtual {v7}, Lcom/oneplus/gallery/MediaSetPickerFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/gallery/GalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 908
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f03001c

    const/4 v8, 0x0

    invoke-virtual {v2, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 910
    new-instance v6, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;-><init>(Lcom/oneplus/gallery/MediaSetPickerFragment$1;)V

    .line 911
    .local v6, "viewInfo":Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;
    const v7, 0x7f060079

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;->countText:Landroid/widget/TextView;

    .line 912
    const v7, 0x7f06007e

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v6, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;->thumbnail:Landroid/widget/ImageView;

    .line 913
    const v7, 0x7f060078

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;->titleText:Landroid/widget/TextView;

    .line 914
    const v7, 0x7f06007d

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;->itemContainer:Landroid/view/View;

    .line 915
    const v7, 0x7f06007f

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;->bottomLine:Landroid/view/View;

    .line 917
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 922
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/MediaSet;

    .line 925
    .local v3, "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    iput-object v3, v6, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    .line 928
    iget-object v7, v6, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;->titleText:Landroid/widget/TextView;

    sget-object v8, Lcom/oneplus/gallery/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v8}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    iget-object v7, v6, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;->itemContainer:Landroid/view/View;

    iget-object v8, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    invoke-virtual {v8}, Lcom/oneplus/gallery/MediaSetPickerFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v8

    const-string v9, "media_picker_list_item_background"

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 932
    iget-object v7, v6, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;->bottomLine:Landroid/view/View;

    iget-object v8, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    invoke-virtual {v8}, Lcom/oneplus/gallery/MediaSetPickerFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v8

    const-string v9, "media_picker_list_item_bottom_line"

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 933
    iget-object v7, v6, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;->titleText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    invoke-virtual {v8}, Lcom/oneplus/gallery/MediaSetPickerFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v8

    const-string v9, "media_picker_list_item_title"

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 934
    iget-object v7, v6, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;->countText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    invoke-virtual {v8}, Lcom/oneplus/gallery/MediaSetPickerFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v8

    const-string v9, "media_picker_list_item_count"

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 937
    sget-object v7, Lcom/oneplus/gallery/media/MediaSet;->PROP_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v7}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 938
    .local v4, "photoCount":Ljava/lang/Integer;
    if-nez v4, :cond_0

    .line 939
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 942
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_3

    .line 943
    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    const v8, 0x7f09007d

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery/MediaSetPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 946
    .local v5, "photoCountStr":Ljava/lang/String;
    :goto_1
    iget-object v7, v6, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;->countText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverMediaTable:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$1800(Lcom/oneplus/gallery/MediaSetPickerFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/Media;

    .line 950
    .local v1, "coverMedia":Lcom/oneplus/gallery/media/Media;
    if-eqz v1, :cond_5

    .line 952
    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetPickerFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;
    invoke-static {v7}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$2100(Lcom/oneplus/gallery/MediaSetPickerFragment;)Lcom/oneplus/gallery/media/ThumbnailImageManager;

    move-result-object v7

    invoke-interface {v7, v1}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->getCachedSmallThumbnailImage(Lcom/oneplus/gallery/media/Media;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 953
    .local v0, "cacheThumb":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 954
    iget-object v7, v6, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 966
    .end local v0    # "cacheThumb":Landroid/graphics/Bitmap;
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_1

    .line 967
    iget-object v8, v6, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;->thumbnail:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    invoke-virtual {v7}, Lcom/oneplus/gallery/MediaSetPickerFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v7

    sget-object v9, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v7, v9}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    const v7, 0x7f0200ab

    :goto_3
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 969
    :cond_1
    return-object p2

    .line 920
    .end local v1    # "coverMedia":Lcom/oneplus/gallery/media/Media;
    .end local v3    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    .end local v4    # "photoCount":Ljava/lang/Integer;
    .end local v5    # "photoCountStr":Ljava/lang/String;
    .end local v6    # "viewInfo":Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;

    .restart local v6    # "viewInfo":Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;
    goto/16 :goto_0

    .line 945
    .restart local v3    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    .restart local v4    # "photoCount":Ljava/lang/Integer;
    :cond_3
    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    const v8, 0x7f09007e

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery/MediaSetPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "photoCountStr":Ljava/lang/String;
    goto :goto_1

    .line 957
    .restart local v0    # "cacheThumb":Landroid/graphics/Bitmap;
    .restart local v1    # "coverMedia":Lcom/oneplus/gallery/media/Media;
    :cond_4
    iget-object v7, v6, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;->thumbnail:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 958
    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    const/4 v8, 0x1

    # invokes: Lcom/oneplus/gallery/MediaSetPickerFragment;->createCoverImage(Lcom/oneplus/gallery/media/MediaSet;Z)V
    invoke-static {v7, v3, v8}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$2600(Lcom/oneplus/gallery/MediaSetPickerFragment;Lcom/oneplus/gallery/media/MediaSet;Z)V

    goto :goto_2

    .line 963
    .end local v0    # "cacheThumb":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v7, v6, Lcom/oneplus/gallery/MediaSetPickerFragment$ViewInfo;->thumbnail:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 964
    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$MediaSetListAdapter;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    const/4 v8, 0x1

    # invokes: Lcom/oneplus/gallery/MediaSetPickerFragment;->createCoverImage(Lcom/oneplus/gallery/media/MediaSet;Z)V
    invoke-static {v7, v3, v8}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$2600(Lcom/oneplus/gallery/MediaSetPickerFragment;Lcom/oneplus/gallery/media/MediaSet;Z)V

    goto :goto_2

    .line 967
    :cond_6
    const v7, 0x7f0200ac

    goto :goto_3
.end method
