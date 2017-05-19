.class Lcom/android/server/policy/PhoneWindowManager$24;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 6537
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 6539
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-nez v8, :cond_1

    .line 6541
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.type.watch"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 6543
    const v4, 0x10304bc

    .line 6551
    .local v4, "theme":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v9, Lcom/android/server/policy/PhoneWindowManager$24$1;

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v9, p0, v10, v4}, Lcom/android/server/policy/PhoneWindowManager$24$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$24;Landroid/content/Context;I)V

    iput-object v9, v8, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 6576
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v9, v8, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->isUpgrade()Z

    move-result v8

    if-eqz v8, :cond_6

    const v8, 0x1040383

    :goto_1
    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 6578
    .local v5, "title":Ljava/lang/String;
    const-string v3, ""

    .line 6579
    .local v3, "strippedTitle":Ljava/lang/String;
    const-string v8, "\u2026"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 6580
    const-string v8, "\u2026"

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 6584
    :goto_2
    move-object v5, v3

    .line 6585
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 6587
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 6588
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 6589
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7e5

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 6591
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x102

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 6594
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/view/Window;->setDimAmount(F)V

    .line 6595
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 6596
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v8, 0x5

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 6597
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6598
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 6599
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->show()V

    .line 6600
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->getBar()Landroid/widget/ProgressBar;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6601
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mBootMessage:Ljava/lang/String;

    const-string v9, "\u3002"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6602
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/PhoneWindowManager;->mBootMessage:Ljava/lang/String;

    const-string v10, "\u3002"

    const-string v11, "."

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/policy/PhoneWindowManager;->mBootMessage:Ljava/lang/String;

    .line 6604
    :cond_0
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/PhoneWindowManager;->mBootMessage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6605
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x457

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 6606
    .local v2, "message":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v2, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6609
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "message":Landroid/os/Message;
    .end local v3    # "strippedTitle":Ljava/lang/String;
    .end local v4    # "theme":I
    .end local v5    # "title":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mBootMessage:Ljava/lang/String;

    const-string v9, "\u3002"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 6610
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/PhoneWindowManager;->mBootMessage:Ljava/lang/String;

    const-string v10, "\u3002"

    const-string v11, "."

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/policy/PhoneWindowManager;->mBootMessage:Ljava/lang/String;

    .line 6613
    :cond_2
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-wide v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mLastDotTime:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    .line 6614
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-wide v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mLastDotTime:J

    sub-long v6, v8, v10

    .line 6615
    .local v6, "timeDiff":J
    const-wide/16 v8, 0x3b6

    cmp-long v8, v6, v8

    if-gez v8, :cond_3

    .line 6616
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mBootMessage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mDots:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6617
    const-wide/16 v8, 0x3e8

    sub-long/2addr v8, v6

    long-to-int v0, v8

    .line 6618
    .local v0, "delay":I
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x457

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 6619
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x457

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 6620
    .restart local v2    # "message":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    int-to-long v10, v0

    invoke-virtual {v8, v2, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6623
    .end local v0    # "delay":I
    .end local v2    # "message":Landroid/os/Message;
    .end local v6    # "timeDiff":J
    :cond_3
    return-void

    .line 6544
    :cond_4
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.type.television"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 6546
    const v4, 0x103049b

    .restart local v4    # "theme":I
    goto/16 :goto_0

    .line 6548
    .end local v4    # "theme":I
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "theme":I
    goto/16 :goto_0

    .line 6576
    :cond_6
    const v8, 0x1040384

    goto/16 :goto_1

    .line 6582
    .restart local v3    # "strippedTitle":Ljava/lang/String;
    .restart local v5    # "title":Ljava/lang/String;
    :cond_7
    const-string v8, "..."

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2
.end method
