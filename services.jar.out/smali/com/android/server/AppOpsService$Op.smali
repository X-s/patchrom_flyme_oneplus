.class public final Lcom/android/server/AppOpsService$Op;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Op"
.end annotation


# instance fields
.field public dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

.field public duration:I

.field public mode:I

.field public nesting:I

.field public final op:I

.field public final packageName:Ljava/lang/String;

.field public proxyPackageName:Ljava/lang/String;

.field public proxyUid:I

.field public rejectTime:J

.field private remember:Z

.field public time:J

.field public final uid:I


# direct methods
.method static synthetic -get0(Lcom/android/server/AppOpsService$Op;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/AppOpsService$Op;->remember:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/AppOpsService$Op;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AppOpsService$Op;->remember:Z

    return p1
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "_uid"    # I
    .param p2, "_packageName"    # Ljava/lang/String;
    .param p3, "_op"    # I

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 169
    iput p1, p0, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 170
    iput-object p2, p0, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 171
    iput p3, p0, Lcom/android/server/AppOpsService$Op;->op:I

    .line 172
    iget v0, p0, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 173
    new-instance v0, Lcom/android/server/PermissionDialogReqQueue;

    invoke-direct {v0}, Lcom/android/server/PermissionDialogReqQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AppOpsService$Op;->remember:Z

    .line 168
    return-void
.end method
