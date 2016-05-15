.class Lcom/android/server/wallpaper/WallpaperManagerService$KeyguardWallpaperData;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyguardWallpaperData"
.end annotation


# instance fields
.field private callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field height:I

.field imageWallpaperPending:Z

.field name:Ljava/lang/String;

.field userId:I

.field wallpaperFile:Ljava/io/File;

.field width:I


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v1, -0x1

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$KeyguardWallpaperData;->name:Ljava/lang/String;

    .line 274
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$KeyguardWallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    .line 277
    iput v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$KeyguardWallpaperData;->width:I

    .line 278
    iput v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$KeyguardWallpaperData;->height:I

    .line 281
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$KeyguardWallpaperData;->userId:I

    .line 282
    new-instance v0, Ljava/io/File;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "keyguard_wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$KeyguardWallpaperData;->wallpaperFile:Ljava/io/File;

    .line 283
    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wallpaper/WallpaperManagerService$KeyguardWallpaperData;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService$KeyguardWallpaperData;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$KeyguardWallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method
