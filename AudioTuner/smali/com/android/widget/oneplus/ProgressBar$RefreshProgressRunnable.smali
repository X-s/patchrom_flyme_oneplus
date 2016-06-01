.class Lcom/android/widget/oneplus/ProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/widget/oneplus/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/widget/oneplus/ProgressBar;


# direct methods
.method private constructor <init>(Lcom/android/widget/oneplus/ProgressBar;)V
    .locals 0

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/android/widget/oneplus/ProgressBar$RefreshProgressRunnable;->this$0:Lcom/android/widget/oneplus/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/widget/oneplus/ProgressBar;Lcom/android/widget/oneplus/ProgressBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/widget/oneplus/ProgressBar;
    .param p2, "x1"    # Lcom/android/widget/oneplus/ProgressBar$1;

    .prologue
    .line 1234
    invoke-direct {p0, p1}, Lcom/android/widget/oneplus/ProgressBar$RefreshProgressRunnable;-><init>(Lcom/android/widget/oneplus/ProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1236
    iget-object v9, p0, Lcom/android/widget/oneplus/ProgressBar$RefreshProgressRunnable;->this$0:Lcom/android/widget/oneplus/ProgressBar;

    monitor-enter v9

    .line 1237
    :try_start_0
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar$RefreshProgressRunnable;->this$0:Lcom/android/widget/oneplus/ProgressBar;

    # getter for: Lcom/android/widget/oneplus/ProgressBar;->mRefreshData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/widget/oneplus/ProgressBar;->access$100(Lcom/android/widget/oneplus/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1238
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar$RefreshProgressRunnable;->this$0:Lcom/android/widget/oneplus/ProgressBar;

    # getter for: Lcom/android/widget/oneplus/ProgressBar;->mRefreshData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/widget/oneplus/ProgressBar;->access$100(Lcom/android/widget/oneplus/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/widget/oneplus/ProgressBar$RefreshData;

    .line 1240
    .local v8, "rd":Lcom/android/widget/oneplus/ProgressBar$RefreshData;
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar$RefreshProgressRunnable;->this$0:Lcom/android/widget/oneplus/ProgressBar;

    iget v1, v8, Lcom/android/widget/oneplus/ProgressBar$RefreshData;->id:I

    iget v2, v8, Lcom/android/widget/oneplus/ProgressBar$RefreshData;->progress:F

    iget-boolean v3, v8, Lcom/android/widget/oneplus/ProgressBar$RefreshData;->fromUser:Z

    const/4 v4, 0x1

    iget-boolean v5, v8, Lcom/android/widget/oneplus/ProgressBar$RefreshData;->animate:Z

    # invokes: Lcom/android/widget/oneplus/ProgressBar;->doRefreshProgress(IFZZZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/widget/oneplus/ProgressBar;->access$200(Lcom/android/widget/oneplus/ProgressBar;IFZZZ)V

    .line 1242
    invoke-virtual {v8}, Lcom/android/widget/oneplus/ProgressBar$RefreshData;->recycle()V

    .line 1238
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1244
    .end local v8    # "rd":Lcom/android/widget/oneplus/ProgressBar$RefreshData;
    :cond_0
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar$RefreshProgressRunnable;->this$0:Lcom/android/widget/oneplus/ProgressBar;

    # getter for: Lcom/android/widget/oneplus/ProgressBar;->mRefreshData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/widget/oneplus/ProgressBar;->access$100(Lcom/android/widget/oneplus/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1245
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar$RefreshProgressRunnable;->this$0:Lcom/android/widget/oneplus/ProgressBar;

    const/4 v1, 0x0

    # setter for: Lcom/android/widget/oneplus/ProgressBar;->mRefreshIsPosted:Z
    invoke-static {v0, v1}, Lcom/android/widget/oneplus/ProgressBar;->access$302(Lcom/android/widget/oneplus/ProgressBar;Z)Z

    .line 1246
    monitor-exit v9

    .line 1247
    return-void

    .line 1246
    .end local v6    # "count":I
    .end local v7    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
