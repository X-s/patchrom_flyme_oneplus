.class public Lcom/oneplus/camera/ui/ActionChooser;
.super Ljava/lang/Object;
.source "ActionChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/ActionChooser$1;,
        Lcom/oneplus/camera/ui/ActionChooser$Callback;
    }
.end annotation


# static fields
.field static final EXTRA_KEY_CHOOSER_ID:Ljava/lang/String; = "ActionChooserId"

.field private static final TAG:Ljava/lang/String;

.field private static final m_ActiveChoosers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/oneplus/camera/ui/ActionChooser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_Activity:Lcom/oneplus/camera/OPCameraActivity;

.field private final m_ActivityResultCallback:Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;

.field private m_ActivityResultHandle:Lcom/oneplus/base/Handle;

.field private m_Callback:Lcom/oneplus/camera/ui/ActionChooser$Callback;

.field private final m_Id:J

.field private m_Intent:Landroid/content/Intent;

.field private volatile m_NextId:J

.field private m_Title:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/camera/ui/ActionChooser;Lcom/oneplus/base/Handle;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/ActionChooser;->onActivityResult(Lcom/oneplus/base/Handle;ILandroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/oneplus/camera/ui/ActionChooser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/ui/ActionChooser;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/oneplus/camera/ui/ActionChooser;->m_ActiveChoosers:Landroid/util/LongSparseArray;

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/OPCameraActivity;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "activity"    # Lcom/oneplus/camera/OPCameraActivity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "titleResId"    # I

    .prologue
    .line 80
    if-eqz p3, :cond_0

    invoke-virtual {p1, p3}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/camera/ui/ActionChooser;-><init>(Lcom/oneplus/camera/OPCameraActivity;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 78
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/oneplus/camera/OPCameraActivity;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "activity"    # Lcom/oneplus/camera/OPCameraActivity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;

    .prologue
    const-wide/16 v4, 0x1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide v4, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_NextId:J

    .line 33
    new-instance v1, Lcom/oneplus/camera/ui/ActionChooser$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/ActionChooser$1;-><init>(Lcom/oneplus/camera/ui/ActionChooser;)V

    iput-object v1, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_ActivityResultCallback:Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;

    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_Activity:Lcom/oneplus/camera/OPCameraActivity;

    .line 95
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :cond_1
    iput-object v0, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_Intent:Landroid/content/Intent;

    .line 96
    iput-object p3, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_Title:Ljava/lang/CharSequence;

    .line 97
    const-class v1, Lcom/oneplus/camera/ui/ActionChooser;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-wide v2, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_NextId:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_NextId:J

    iput-wide v2, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_Id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 90
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getActiveChooser(J)Lcom/oneplus/camera/ui/ActionChooser;
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 111
    const-class v1, Lcom/oneplus/camera/ui/ActionChooser;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Lcom/oneplus/camera/ui/ActionChooser;->m_ActiveChoosers:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/ActionChooser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onActivityResult(Lcom/oneplus/base/Handle;ILandroid/content/Intent;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_ActivityResultHandle:Lcom/oneplus/base/Handle;

    if-eq v0, p1, :cond_0

    .line 142
    return-void

    .line 143
    :cond_0
    iput-object v1, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_ActivityResultHandle:Lcom/oneplus/base/Handle;

    .line 144
    const-class v1, Lcom/oneplus/camera/ui/ActionChooser;

    monitor-enter v1

    .line 146
    :try_start_0
    sget-object v0, Lcom/oneplus/camera/ui/ActionChooser;->m_ActiveChoosers:Landroid/util/LongSparseArray;

    iget-wide v2, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_Id:J

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 148
    iget-object v0, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_Callback:Lcom/oneplus/camera/ui/ActionChooser$Callback;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_Callback:Lcom/oneplus/camera/ui/ActionChooser$Callback;

    invoke-virtual {v0, p0, p2, p3}, Lcom/oneplus/camera/ui/ActionChooser$Callback;->onActivityResult(Lcom/oneplus/camera/ui/ActionChooser;ILandroid/content/Intent;)V

    .line 139
    :cond_1
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final isShowing()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_ActivityResultHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    return v0
.end method

.method final notifyActivitySelected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "activityName"    # Landroid/content/ComponentName;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_ActivityResultHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_Callback:Lcom/oneplus/camera/ui/ActionChooser$Callback;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_Callback:Lcom/oneplus/camera/ui/ActionChooser$Callback;

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/camera/ui/ActionChooser$Callback;->onActivitySelected(Lcom/oneplus/camera/ui/ActionChooser;Landroid/content/ComponentName;)V

    .line 129
    :cond_1
    return-void
.end method

.method public setCallback(Lcom/oneplus/camera/ui/ActionChooser$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/camera/ui/ActionChooser$Callback;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_Callback:Lcom/oneplus/camera/ui/ActionChooser$Callback;

    .line 157
    return-void
.end method

.method public show(Z)Z
    .locals 10
    .param p1, "startForResult"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 171
    iget-object v4, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_ActivityResultHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    sget-object v4, Lcom/oneplus/camera/ui/ActionChooser;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "show() - Chooser is showing"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return v8

    .line 176
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_Intent:Landroid/content/Intent;

    if-nez v4, :cond_1

    .line 178
    sget-object v4, Lcom/oneplus/camera/ui/ActionChooser;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "show() - No intent"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return v8

    .line 183
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/base/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/oneplus/camera/ui/ActionChooserIntentSender;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .local v3, "receiverIntent":Landroid/content/Intent;
    const-string/jumbo v4, "ActionChooserId"

    iget-wide v6, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_Id:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 185
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/base/BaseApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x8000000

    invoke-static {v4, v8, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 188
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_Intent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_Title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v1

    .line 189
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 190
    iget-object v4, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_Activity:Lcom/oneplus/camera/OPCameraActivity;

    iget-object v5, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_ActivityResultCallback:Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;

    invoke-virtual {v4, v1, v5}, Lcom/oneplus/camera/OPCameraActivity;->startActivityForResultByAgent(Landroid/content/Intent;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_ActivityResultHandle:Lcom/oneplus/base/Handle;

    .line 205
    iget-object v4, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_ActivityResultHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 207
    const-class v5, Lcom/oneplus/camera/ui/ActionChooser;

    monitor-enter v5

    .line 209
    :try_start_0
    sget-object v4, Lcom/oneplus/camera/ui/ActionChooser;->m_ActiveChoosers:Landroid/util/LongSparseArray;

    iget-wide v6, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_Id:J

    invoke-virtual {v4, v6, v7, p0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 211
    return v9

    .line 195
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/oneplus/camera/ui/ActionChooser;->m_Activity:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v4, v1}, Lcom/oneplus/camera/OPCameraActivity;->startActivityByAgent(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    return v9

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    return v8

    .line 207
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 213
    :cond_3
    return v8
.end method
