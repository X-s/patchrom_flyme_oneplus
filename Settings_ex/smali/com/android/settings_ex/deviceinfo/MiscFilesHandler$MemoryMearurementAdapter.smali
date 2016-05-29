.class Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
.super Landroid/widget/BaseAdapter;
.source "MiscFilesHandler.java"

# interfaces
.implements Lcom/android/settings_ex/deviceinfo/StorageMeasurement$DataInitReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MemoryMearurementAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSize:J

.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;Landroid/app/Activity;)V
    .locals 2
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    .line 203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    .line 228
    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mContext:Landroid/content/Context;

    .line 232
    invoke-static {p0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->registDataInitReceiver(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$DataInitReceiver;)V

    .line 243
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDataSize()J
    .locals 2

    .prologue
    .line 277
    iget-wide v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    return-wide v0
.end method

.method public getItem(I)Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 253
    :cond_0
    const/4 v0, 0x0

    .line 255
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 261
    :cond_0
    const-wide/16 v0, 0x0

    .line 263
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;->mId:J

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 287
    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$400(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400cc

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;

    move-object v3, v4

    .line 290
    .end local p2    # "convertView":Landroid/view/View;
    .local v3, "view":Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v0

    .line 291
    .local v0, "item":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;
    iget-object v4, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;->setFileName(Ljava/lang/String;)V

    .line 292
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mContext:Landroid/content/Context;

    iget-wide v6, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;->setFileSize(Ljava/lang/String;)V

    move-object v2, p3

    .line 293
    check-cast v2, Landroid/widget/ListView;

    .line 294
    .local v2, "listView":Landroid/widget/ListView;
    move v1, p1

    .line 295
    .local v1, "listPosition":I
    invoke-virtual {v3}, Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v4

    new-instance v5, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;-><init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;I)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 303
    new-instance v4, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;

    invoke-direct {v4, p0, v2, v1, v3}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;-><init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;ILcom/android/settings_ex/deviceinfo/FileItemInfoLayout;)V

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 313
    new-instance v4, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$4;

    invoke-direct {v4, p0, v2, v1, v3}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$4;-><init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;ILcom/android/settings_ex/deviceinfo/FileItemInfoLayout;)V

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    return-object v3

    .line 287
    .end local v0    # "item":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;
    .end local v1    # "listPosition":I
    .end local v2    # "listView":Landroid/widget/ListView;
    .end local v3    # "view":Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    check-cast p2, Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;

    move-object v3, p2

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 282
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 283
    return-void
.end method

.method public onDataInitFinish(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "mFileInfoForMisc":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;>;"
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 212
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "mFileInfoForMisc":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 213
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    .line 215
    .local v1, "info":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;
    iget-wide v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    iget-wide v4, v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    goto :goto_0

    .line 218
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v3

    # setter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mDataCount:I
    invoke-static {v2, v3}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$002(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;I)I

    .line 219
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    new-instance v3, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;-><init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;)V

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method

.method public removeAll(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "objs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 274
    :cond_0
    return-void

    .line 270
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 271
    .local v1, "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 272
    iget-wide v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    check-cast v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    .end local v1    # "o":Ljava/lang/Object;
    iget-wide v4, v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    goto :goto_0
.end method
