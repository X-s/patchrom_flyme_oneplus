.class public Lcom/android/systemui_ex/statusbar/phone/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/phone/TaskManager$TaskManagerHandler;,
        Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;
    }
.end annotation


# static fields
.field private static final sLock:Ljava/lang/Object;


# instance fields
.field final DEBUG:Z

.field private final FLOAT_VIEW_DISPLAY_TIME:I

.field private final MAX_TASK_NUM:I

.field final TAG:Ljava/lang/String;

.field private childs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mActivityManager:Landroid/app/ActivityManager;

.field private mActivityStarter:Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/systemui_ex/statusbar/phone/TaskManager$TaskManagerHandler;

.field private mHomeIntent:Landroid/content/Intent;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field private mTaskManagerList:Landroid/widget/LinearLayout;

.field private mTaskManagerPanel:Landroid/widget/LinearLayout;

.field private mTipsShowing:Z

.field private showTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskMangerPanel"    # Landroid/widget/LinearLayout;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->DEBUG:Z

    .line 72
    const-string v1, "TaskManager"

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->TAG:Ljava/lang/String;

    .line 77
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->MAX_TASK_NUM:I

    .line 78
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->FLOAT_VIEW_DISPLAY_TIME:I

    .line 81
    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/TaskManager$TaskManagerHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$TaskManagerHandler;-><init>(Lcom/android/systemui_ex/statusbar/phone/TaskManager;Lcom/android/systemui_ex/statusbar/phone/TaskManager$1;)V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mHandler:Lcom/android/systemui_ex/statusbar/phone/TaskManager$TaskManagerHandler;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->showTaskList:Ljava/util/ArrayList;

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->childs:Ljava/util/HashMap;

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mTipsShowing:Z

    .line 96
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mTaskManagerPanel:Landroid/widget/LinearLayout;

    .line 98
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 100
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mHomeIntent:Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mHomeIntent:Landroid/content/Intent;

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mTaskManagerPanel:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0128

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mTaskManagerList:Landroid/widget/LinearLayout;

    .line 104
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mTaskManagerPanel:Landroid/widget/LinearLayout;

    const v2, 0x7f0f00bd

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 105
    .local v0, "killAllButton":Landroid/widget/Button;
    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/TaskManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$1;-><init>(Lcom/android/systemui_ex/statusbar/phone/TaskManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/phone/TaskManager;)Lcom/android/systemui_ex/statusbar/phone/TaskManager$TaskManagerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/TaskManager;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mHandler:Lcom/android/systemui_ex/statusbar/phone/TaskManager$TaskManagerHandler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui_ex/statusbar/phone/TaskManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/TaskManager;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mTipsShowing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/statusbar/phone/TaskManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/TaskManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->startTaskByName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/statusbar/phone/TaskManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/TaskManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->killChildByName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/statusbar/phone/TaskManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/TaskManager;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->refreshMemoryUsagePanel()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/statusbar/phone/TaskManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/TaskManager;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->killAllChild()V

    return-void
.end method

.method private extractMemValue([BI)J
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "index"    # I

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 256
    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_2

    aget-byte v2, p1, p2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 257
    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_1

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_1

    .line 258
    move v0, p2

    .line 259
    .local v0, "start":I
    add-int/lit8 p2, p2, 0x1

    .line 261
    :goto_1
    array-length v2, p1

    if-ge p2, v2, :cond_0

    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_0

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_0

    .line 262
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 264
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p2, v0

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 265
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    .line 269
    .end local v0    # "start":I
    .end local v1    # "str":Ljava/lang/String;
    :goto_2
    return-wide v2

    .line 267
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 269
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method private getDetailProcess(Ljava/lang/String;)Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 513
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->showTaskList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 514
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->showTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;

    .line 515
    .local v0, "detailProcess":Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;
    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    .end local v0    # "detailProcess":Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateTaskItemView(Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;)V
    .locals 10
    .param p1, "detailProcess"    # Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 185
    .local v3, "taskIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "taskName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->childs:Ljava/util/HashMap;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->childs:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 234
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mContext:Landroid/content/Context;

    const v8, 0x7f040063

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, "itemView":Landroid/view/View;
    const v7, 0x7f0f0183

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 194
    .local v4, "taskIconImageView":Landroid/widget/ImageView;
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    new-instance v7, Lcom/android/systemui_ex/statusbar/phone/TaskManager$2;

    invoke-direct {v7, p0, v2}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$2;-><init>(Lcom/android/systemui_ex/statusbar/phone/TaskManager;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const v7, 0x7f0f0184

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 207
    .local v6, "taskNameTextView":Landroid/widget/TextView;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    new-instance v7, Lcom/android/systemui_ex/statusbar/phone/TaskManager$3;

    invoke-direct {v7, p0, v2}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$3;-><init>(Lcom/android/systemui_ex/statusbar/phone/TaskManager;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v7, 0x7f0f0185

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 220
    .local v1, "killButton":Landroid/widget/ImageView;
    new-instance v7, Lcom/android/systemui_ex/statusbar/phone/TaskManager$4;

    invoke-direct {v7, p0, v2}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$4;-><init>(Lcom/android/systemui_ex/statusbar/phone/TaskManager;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->childs:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mTaskManagerList:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private inflateTaskListView()V
    .locals 3

    .prologue
    .line 171
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mTaskManagerList:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->childs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 174
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mTaskManagerList:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 177
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->showTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;

    .line 178
    .local v0, "detailProcess":Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->inflateTaskItemView(Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;)V

    goto :goto_0

    .line 181
    .end local v0    # "detailProcess":Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private killAllChild()V
    .locals 5

    .prologue
    .line 359
    sget-object v4, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 360
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->showTaskList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 361
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->showTaskList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;

    .line 362
    .local v0, "detailProcess":Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;
    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->isHome()Z

    move-result v3

    if-nez v3, :cond_0

    .line 363
    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->killChildByName(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    .end local v0    # "detailProcess":Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    return-void
.end method

.method private killChildByName(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 338
    sget-object v3, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 339
    if-nez p1, :cond_0

    .line 340
    :try_start_0
    const-string v2, "TaskManager"

    const-string v4, "killChildByName got packageName null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    monitor-exit v3

    .line 356
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->getDetailProcess(Ljava/lang/String;)Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;

    move-result-object v0

    .line 345
    .local v0, "detailProcess":Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;
    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->isHome()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    const v2, 0x7f0c0170

    invoke-direct {p0, v2}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->showTips(I)V

    .line 347
    monitor-exit v3

    goto :goto_0

    .line 355
    .end local v0    # "detailProcess":Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 350
    .restart local v0    # "detailProcess":Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->childs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 352
    .local v1, "itemView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 353
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mTaskManagerList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 355
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private loadRunningTasks()V
    .locals 12

    .prologue
    .line 131
    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    .line 132
    .local v8, "runningTaskList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mHomeIntent:Landroid/content/Intent;

    const v11, 0x10040

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 135
    .local v4, "mHomeResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->showTaskList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 136
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 137
    .local v7, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v5, 0x1

    .line 138
    .local v5, "needshow":Z
    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;

    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v9, v7}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;-><init>(Lcom/android/systemui_ex/statusbar/phone/TaskManager;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 139
    .local v1, "detailProcess":Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;
    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->appNeedHide(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 142
    const/4 v5, 0x0

    .line 145
    :cond_1
    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 146
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 147
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 148
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 149
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->setHome(Z)V

    .line 155
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_2
    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->filter()Z

    move-result v9

    if-nez v9, :cond_0

    .line 156
    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->showTaskList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 159
    .end local v0    # "count":I
    .end local v1    # "detailProcess":Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;
    .end local v2    # "i":I
    .end local v5    # "needshow":Z
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4
    return-void
.end method

.method private matchText([BILjava/lang/String;)Z
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "index"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 274
    .local v0, "N":I
    add-int v3, p2, v0

    array-length v4, p1

    if-lt v3, v4, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v2

    .line 277
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 278
    add-int v3, p2, v1

    aget-byte v3, p1, v3

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 282
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private readAvailMem()J
    .locals 13

    .prologue
    const-wide/16 v10, 0x0

    .line 286
    const/16 v5, 0x400

    new-array v4, v5, [B

    .line 288
    .local v4, "mBuffer":[B
    const-wide/16 v8, 0x0

    .line 289
    .local v8, "memFree":J
    const-wide/16 v6, 0x0

    .line 290
    .local v6, "memCached":J
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v5, "/proc/meminfo"

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 291
    .local v2, "is":Ljava/io/FileInputStream;
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 292
    .local v3, "len":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 293
    array-length v0, v4

    .line 294
    .local v0, "BUFLEN":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_4

    cmp-long v5, v8, v10

    if-eqz v5, :cond_0

    cmp-long v5, v6, v10

    if-nez v5, :cond_4

    .line 295
    :cond_0
    const-string v5, "MemFree"

    invoke-direct {p0, v4, v1, v5}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->matchText([BILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 296
    add-int/lit8 v1, v1, 0x7

    .line 297
    invoke-direct {p0, v4, v1}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->extractMemValue([BI)J

    move-result-wide v8

    .line 302
    :cond_1
    :goto_1
    if-ge v1, v0, :cond_3

    aget-byte v5, v4, v1

    const/16 v12, 0xa

    if-eq v5, v12, :cond_3

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 298
    :cond_2
    const-string v5, "Cached"

    invoke-direct {p0, v4, v1, v5}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->matchText([BILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 299
    add-int/lit8 v1, v1, 0x6

    .line 300
    invoke-direct {p0, v4, v1}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->extractMemValue([BI)J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    goto :goto_1

    .line 294
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    :cond_4
    add-long v10, v8, v6

    .line 310
    .end local v0    # "BUFLEN":I
    .end local v1    # "i":I
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    :goto_2
    return-wide v10

    .line 308
    :catch_0
    move-exception v5

    goto :goto_2

    .line 307
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method private readTotalMem()J
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    .line 314
    const/16 v5, 0x400

    new-array v4, v5, [B

    .line 316
    .local v4, "mBuffer":[B
    const-wide/16 v6, 0x0

    .line 317
    .local v6, "memTotal":J
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v5, "/proc/meminfo"

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 318
    .local v2, "is":Ljava/io/FileInputStream;
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 319
    .local v3, "len":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 320
    array-length v0, v4

    .line 321
    .local v0, "BUFLEN":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 322
    const-string v5, "MemTotal"

    invoke-direct {p0, v4, v1, v5}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->matchText([BILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 323
    add-int/lit8 v1, v1, 0x7

    .line 324
    invoke-direct {p0, v4, v1}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->extractMemValue([BI)J

    move-result-wide v6

    .line 326
    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    aget-byte v5, v4, v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v10, 0xa

    if-eq v5, v10, :cond_1

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 321
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    .end local v0    # "BUFLEN":I
    .end local v1    # "i":I
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    :catch_0
    move-exception v5

    :goto_2
    move-wide v6, v8

    .line 334
    .end local v6    # "memTotal":J
    :cond_2
    return-wide v6

    .line 331
    .restart local v6    # "memTotal":J
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method private refreshMemoryUsageBar(Landroid/widget/ProgressBar;)V
    .locals 4
    .param p1, "progressBar"    # Landroid/widget/ProgressBar;

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->readTotalMem()J

    move-result-wide v2

    long-to-int v1, v2

    .line 249
    .local v1, "max":I
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->readAvailMem()J

    move-result-wide v2

    long-to-int v0, v2

    .line 250
    .local v0, "currentMem":I
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 251
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 253
    .end local v0    # "currentMem":I
    .end local v1    # "max":I
    :cond_0
    return-void
.end method

.method private refreshMemoryUsagePanel()V
    .locals 4

    .prologue
    .line 162
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mTaskManagerPanel:Landroid/widget/LinearLayout;

    const v3, 0x7f0f00be

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 164
    .local v1, "memoryUsageText":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mTaskManagerPanel:Landroid/widget/LinearLayout;

    const v3, 0x7f0f00bf

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 166
    .local v0, "memoryUsageBar":Landroid/widget/ProgressBar;
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->refreshMemoryusageText(Landroid/widget/TextView;)V

    .line 167
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->refreshMemoryUsageBar(Landroid/widget/ProgressBar;)V

    .line 168
    return-void
.end method

.method private refreshMemoryusageText(Landroid/widget/TextView;)V
    .locals 7
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 237
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->readAvailMem()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "availMem":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->readTotalMem()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "totalMem":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0c016f

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "toast":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    return-void
.end method

.method private setTaskManagerTitle()V
    .locals 4

    .prologue
    .line 121
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mTaskManagerPanel:Landroid/widget/LinearLayout;

    const v3, 0x7f0f00bc

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 123
    .local v1, "taskManagerTitle":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mTaskManagerPanel:Landroid/widget/LinearLayout;

    const v3, 0x7f0f00bd

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 125
    .local v0, "killAllButton":Landroid/widget/Button;
    const v2, 0x7f0c016c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 126
    const v2, 0x7f0c016e

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 127
    return-void
.end method

.method private showTips(I)V
    .locals 10
    .param p1, "resid"    # I

    .prologue
    const/4 v7, -0x2

    .line 571
    iget-boolean v5, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mTipsShowing:Z

    if-eqz v5, :cond_0

    .line 572
    const-string v5, "TaskManager"

    const-string v6, "The floating window is showing, stop showing another one."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 580
    .local v1, "inflate":Landroid/view/LayoutInflater;
    const v5, 0x10900eb

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 582
    .local v0, "floatView":Landroid/view/View;
    const v5, 0x102000b

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 585
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 588
    .local v4, "windowManager":Landroid/view/WindowManager;
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 589
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x7de

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 590
    const/4 v5, -0x3

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 591
    const/16 v5, 0x98

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 594
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 595
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 596
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 597
    const v5, 0x1030004

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 598
    invoke-interface {v4, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mTipsShowing:Z

    .line 602
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    new-instance v6, Lcom/android/systemui_ex/statusbar/phone/TaskManager$5;

    invoke-direct {v6, p0, v4, v0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$5;-><init>(Lcom/android/systemui_ex/statusbar/phone/TaskManager;Landroid/view/WindowManager;Landroid/view/View;)V

    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v6, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method private startTaskByName(Ljava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/high16 v9, 0x10000000

    const v8, -0x200001

    .line 481
    const/4 v3, 0x0

    .line 482
    .local v3, "success":Z
    sget-object v5, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 483
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->getDetailProcess(Ljava/lang/String;)Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;

    move-result-object v0

    .line 484
    .local v0, "detailProcess":Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->getBringtoFrontIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 485
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->getIntent()Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 488
    :cond_0
    if-eqz v2, :cond_1

    .line 490
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v8

    or-int/2addr v4, v9

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 492
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mActivityStarter:Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;

    const/4 v6, 0x1

    invoke-interface {v4, v2, v6}, Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    const/4 v3, 0x1

    .line 498
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 499
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 500
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->getBaseActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 502
    :try_start_3
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v8

    or-int/2addr v4, v9

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 504
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mActivityStarter:Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;

    const/4 v6, 0x1

    invoke-interface {v4, v2, v6}, Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 509
    :cond_2
    :goto_1
    :try_start_4
    monitor-exit v5

    .line 510
    return-void

    .line 494
    :catch_0
    move-exception v1

    .line 495
    .local v1, "ee":Ljava/lang/Exception;
    const-string v4, "TaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start activity meets exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 509
    .end local v0    # "detailProcess":Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;
    .end local v1    # "ee":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 505
    .restart local v0    # "detailProcess":Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 506
    .restart local v1    # "ee":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "TaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start activity meets exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public appNeedHide(Ljava/lang/String;)Z
    .locals 5
    .param p1, "psPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 551
    const-string v4, "com.android.stk"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.android.settings"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.android.bluetooth"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.android.systemui"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v3

    .line 557
    :cond_1
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->showTaskList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;

    .line 558
    .local v0, "detailProcess":Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;
    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 563
    .end local v0    # "detailProcess":Lcom/android/systemui_ex/statusbar/phone/TaskManager$DetailProcess;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getBringtoFrontIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 9
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 529
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v7, 0x64

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v4

    .line 531
    .local v4, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 532
    .local v3, "numTasks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 533
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 534
    .local v1, "info":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v6, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 535
    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, v1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    .line 536
    iget-object v6, v1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 538
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const v7, -0x200001

    and-int/2addr v6, v7

    const/high16 v7, 0x10000000

    or-int/2addr v6, v7

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 540
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 541
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_1

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 547
    .end local v1    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_1
    return-object v2

    .line 532
    .restart local v1    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    .end local v1    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public refreshTaskManagerView()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "TaskManager"

    const-string v1, "refreshTaskManagerView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->setTaskManagerTitle()V

    .line 115
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->loadRunningTasks()V

    .line 116
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->refreshMemoryUsagePanel()V

    .line 117
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->inflateTaskListView()V

    .line 118
    return-void
.end method

.method public setActivityStarter(Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;)V
    .locals 0
    .param p1, "activityStarter"    # Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/TaskManager;->mActivityStarter:Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;

    .line 478
    return-void
.end method
