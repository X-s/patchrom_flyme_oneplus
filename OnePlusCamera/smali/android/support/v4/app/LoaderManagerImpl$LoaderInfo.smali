.class final Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
.super Ljava/lang/Object;
.source "LoaderManager.java"

# interfaces
.implements Landroid/support/v4/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoaderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final mArgs:Landroid/os/Bundle;

.field mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mData:Ljava/lang/Object;

.field mDeliveredData:Z

.field mDestroyed:Z

.field mHaveData:Z

.field final mId:I

.field mListenerRegistered:Z

.field mLoader:Landroid/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

.field mReportNextStart:Z

.field mRetaining:Z

.field mRetainingStarted:Z

.field mStarted:Z

.field final synthetic this$0:Landroid/support/v4/app/LoaderManagerImpl;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput p2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 230
    iput-object p3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    .line 231
    iput-object p4, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 232
    return-void
.end method


# virtual methods
.method callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 418
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    if-nez v1, :cond_0

    .line 435
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v1, :cond_1

    move-object v1, v0

    .line 425
    :goto_1
    :try_start_0
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-nez v0, :cond_2

    .line 427
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_3

    .line 433
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    goto :goto_0

    .line 421
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 422
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    const-string/jumbo v2, "onLoadFinished"

    iput-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    :cond_2
    :try_start_1
    const-string/jumbo v0, "LoaderManager"

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  onLoadFinished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, p2}, Landroid/support/v4/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 430
    :catchall_0
    move-exception v0

    .line 429
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v2, :cond_4

    .line 430
    :goto_4
    throw v0

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v1, v0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v1, v2, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    goto :goto_4
.end method

.method destroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 327
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-nez v1, :cond_1

    .line 328
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    .line 329
    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 330
    iput-boolean v4, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 331
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    if-nez v2, :cond_2

    .line 346
    :cond_0
    :goto_1
    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 347
    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    .line 348
    iput-boolean v4, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 349
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    if-nez v0, :cond_6

    .line 356
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-nez v0, :cond_8

    .line 359
    :goto_3
    return-void

    :cond_1
    const-string/jumbo v1, "LoaderManager"

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Destroying: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 332
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-nez v1, :cond_3

    .line 334
    :goto_4
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v1, :cond_4

    move-object v1, v0

    .line 339
    :goto_5
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-interface {v2, v3}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroid/support/v4/content/Loader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_0

    .line 342
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v1, v2, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "LoaderManager"

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Reseting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 335
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 336
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    const-string/jumbo v3, "onLoaderReset"

    iput-object v3, v2, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    goto :goto_5

    .line 342
    :catchall_0
    move-exception v0

    .line 341
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v2, :cond_5

    .line 342
    :goto_6
    throw v0

    :cond_5
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v1, v2, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    goto :goto_6

    .line 350
    :cond_6
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-nez v0, :cond_7

    .line 354
    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->reset()V

    goto/16 :goto_2

    .line 351
    :cond_7
    iput-boolean v4, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 352
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    goto :goto_7

    .line 357
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    goto/16 :goto_3
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 451
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mArgs="

    .line 452
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 453
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 454
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    if-nez v0, :cond_1

    .line 458
    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_2

    .line 459
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, "  mDeliveredData="

    .line 460
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 461
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 463
    :goto_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mReportNextStart="

    .line 464
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mDestroyed="

    .line 465
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 466
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mRetainingStarted="

    .line 467
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mListenerRegistered="

    .line 468
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 469
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-nez v0, :cond_3

    .line 474
    :goto_2
    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 458
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 470
    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2
.end method

.method finishRetain()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 278
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-nez v0, :cond_2

    .line 291
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v0, :cond_4

    .line 300
    :cond_1
    :goto_1
    return-void

    .line 279
    :cond_2
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-nez v0, :cond_3

    .line 280
    :goto_2
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 281
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    if-eq v0, v1, :cond_0

    .line 282
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v0, :cond_0

    .line 286
    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->stop()V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "LoaderManager"

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Finished Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 291
    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    if-nez v0, :cond_1

    .line 298
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onLoadComplete(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 362
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-nez v0, :cond_3

    .line 364
    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    if-nez v0, :cond_4

    .line 369
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_6

    .line 376
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 377
    if-nez v0, :cond_8

    .line 391
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    if-eq v0, p2, :cond_a

    .line 392
    :cond_0
    iput-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 394
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v0, :cond_b

    .line 405
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 406
    if-nez v0, :cond_c

    .line 412
    :cond_1
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_d

    .line 415
    :cond_2
    :goto_3
    return-void

    :cond_3
    const-string/jumbo v0, "LoaderManager"

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLoadComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :cond_4
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-nez v0, :cond_5

    .line 366
    :goto_4
    return-void

    :cond_5
    const-string/jumbo v0, "LoaderManager"

    const-string/jumbo v1, "  Ignoring load complete -- destroyed"

    .line 365
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 372
    :cond_6
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-nez v0, :cond_7

    .line 373
    :goto_5
    return-void

    :cond_7
    const-string/jumbo v0, "LoaderManager"

    const-string/jumbo v1, "  Ignoring load complete -- not active"

    .line 372
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 381
    :cond_8
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-nez v1, :cond_9

    .line 382
    :goto_6
    iput-object v4, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 383
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    iget v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v1, v2, v4}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 384
    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 385
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/LoaderManagerImpl;->installLoader(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V

    .line 386
    return-void

    :cond_9
    const-string/jumbo v1, "LoaderManager"

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Switching to pending loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 391
    :cond_a
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 395
    :cond_b
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 406
    :cond_c
    if-eq v0, p0, :cond_1

    .line 407
    iput-boolean v3, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 408
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 409
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    goto/16 :goto_2

    .line 412
    :cond_d
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v0

    if-nez v0, :cond_2

    .line 413
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    goto/16 :goto_3
.end method

.method reportStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 303
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    if-eqz v0, :cond_0

    .line 305
    iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 306
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method retain()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 270
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-nez v0, :cond_0

    .line 271
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 272
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    .line 273
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    const/4 v0, 0x0

    .line 274
    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 275
    return-void

    :cond_0
    const-string/jumbo v0, "LoaderManager"

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 235
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-nez v0, :cond_2

    .line 243
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v0, :cond_3

    .line 248
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 250
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-nez v0, :cond_4

    .line 251
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_5

    .line 254
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    if-nez v0, :cond_6

    .line 267
    :goto_2
    return-void

    .line 235
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    if-eqz v0, :cond_0

    .line 239
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 240
    return-void

    .line 245
    :cond_3
    return-void

    :cond_4
    const-string/jumbo v0, "LoaderManager"

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    goto :goto_1

    .line 255
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-nez v0, :cond_8

    .line 261
    :cond_7
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v0, :cond_9

    .line 265
    :goto_3
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->startLoading()V

    goto :goto_2

    .line 255
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/content/Loader;->registerListener(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 263
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    goto :goto_3
.end method

.method stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 314
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-nez v0, :cond_1

    .line 315
    :goto_0
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 316
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-eqz v0, :cond_2

    .line 324
    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "LoaderManager"

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 317
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v0, :cond_0

    .line 319
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 320
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 321
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->stopLoading()V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "LoaderInfo{"

    .line 440
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " #"

    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " : "

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string/jumbo v1, "}}"

    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
