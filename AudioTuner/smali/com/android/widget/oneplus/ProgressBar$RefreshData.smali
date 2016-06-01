.class Lcom/android/widget/oneplus/ProgressBar$RefreshData;
.super Ljava/lang/Object;
.source "ProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/widget/oneplus/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshData"
.end annotation


# static fields
.field private static final POOL_MAX:I = 0x18

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Lcom/android/widget/oneplus/ProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public animate:Z

.field public fromUser:Z

.field public id:I

.field public progress:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1252
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/android/widget/oneplus/ProgressBar$RefreshData;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(IFZZ)Lcom/android/widget/oneplus/ProgressBar$RefreshData;
    .locals 2
    .param p0, "id"    # I
    .param p1, "progress"    # F
    .param p2, "fromUser"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 1262
    sget-object v1, Lcom/android/widget/oneplus/ProgressBar$RefreshData;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/widget/oneplus/ProgressBar$RefreshData;

    .line 1263
    .local v0, "rd":Lcom/android/widget/oneplus/ProgressBar$RefreshData;
    if-nez v0, :cond_0

    .line 1264
    new-instance v0, Lcom/android/widget/oneplus/ProgressBar$RefreshData;

    .end local v0    # "rd":Lcom/android/widget/oneplus/ProgressBar$RefreshData;
    invoke-direct {v0}, Lcom/android/widget/oneplus/ProgressBar$RefreshData;-><init>()V

    .line 1266
    .restart local v0    # "rd":Lcom/android/widget/oneplus/ProgressBar$RefreshData;
    :cond_0
    iput p0, v0, Lcom/android/widget/oneplus/ProgressBar$RefreshData;->id:I

    .line 1267
    iput p1, v0, Lcom/android/widget/oneplus/ProgressBar$RefreshData;->progress:F

    .line 1268
    iput-boolean p2, v0, Lcom/android/widget/oneplus/ProgressBar$RefreshData;->fromUser:Z

    .line 1269
    iput-boolean p3, v0, Lcom/android/widget/oneplus/ProgressBar$RefreshData;->animate:Z

    .line 1270
    return-object v0
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .prologue
    .line 1274
    sget-object v0, Lcom/android/widget/oneplus/ProgressBar$RefreshData;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 1275
    return-void
.end method
