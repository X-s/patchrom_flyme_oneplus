.class Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    .line 93
    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {p1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v0

    # setter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mDataCount:I
    invoke-static {p1, v0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$002(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;I)I

    .line 94
    return-void
.end method

.method private deleteDir(Ljava/io/File;)Z
    .locals 5
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 161
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "children":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 164
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 165
    .local v2, "success":Z
    if-nez v2, :cond_0

    .line 166
    const/4 v3, 0x0

    .line 171
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :goto_1
    return v3

    .line 163
    .restart local v1    # "i":I
    .restart local v2    # "success":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_1
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 107
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v10

    .line 108
    .local v10, "lv":Landroid/widget/ListView;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 154
    :goto_0
    return v3

    .line 111
    :pswitch_0
    invoke-virtual {v10}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 112
    .local v7, "checkedItems":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    .line 113
    .local v0, "checkedCount":I
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mDataCount:I
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 114
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checked item counts do not match. checkedCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dataSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mDataCount:I
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mDataCount:I
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)I

    move-result v1

    if-lez v1, :cond_5

    .line 118
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v11, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mDataCount:I
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)I

    move-result v1

    if-ge v9, v1, :cond_4

    .line 120
    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 124
    :cond_1
    sget-boolean v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v1, :cond_2

    .line 125
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleting: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_2
    new-instance v8, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    invoke-direct {p0, v8}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->deleteDir(Ljava/io/File;)Z

    .line 135
    :goto_3
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2, v6, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 136
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 132
    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 138
    .end local v8    # "file":Ljava/io/File;
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->removeAll(Ljava/util/List;)V

    .line 139
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->notifyDataSetChanged()V

    .line 140
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v2

    # setter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mDataCount:I
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$002(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;I)I

    .line 142
    .end local v9    # "i":I
    .end local v11    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_5
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    .line 147
    .end local v0    # "checkedCount":I
    .end local v7    # "checkedItems":Landroid/util/SparseBooleanArray;
    :pswitch_1
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mDataCount:I
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)I

    move-result v1

    if-ge v9, v1, :cond_6

    .line 148
    invoke-virtual {v10, v9, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 147
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 151
    :cond_6
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, v3

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto/16 :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f02b5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 98
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f110002

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 99
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 176
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 12
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 180
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-virtual {v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 181
    .local v2, "lv":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    .line 182
    .local v3, "numChecked":I
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$200(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v9}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 186
    .local v0, "checkedItems":Landroid/util/SparseBooleanArray;
    const-wide/16 v4, 0x0

    .line 187
    .local v4, "selectedDataSize":J
    if-lez v3, :cond_1

    .line 188
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mDataCount:I
    invoke-static {v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 189
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 191
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    add-long/2addr v4, v6

    .line 188
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "i":I
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$300(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    invoke-static {v9, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v10}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getDataSize()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 198
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method
