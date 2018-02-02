.class public interface abstract Lcom/oneplus/camera/io/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/io/FileManager$PhotoCallback;
    }
.end annotation


# static fields
.field public static final EVENT_MEDIA_FILES_RESET:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_FILE_ADDED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_FILE_DELETED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_SAVING_QUEUE_FULL:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SAVING_QUEUE_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 24
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsSavingQueueFull"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/io/FileManager;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/io/FileManager;->PROP_IS_SAVING_QUEUE_FULL:Lcom/oneplus/base/PropertyKey;

    .line 28
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SavingQueueSize"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/camera/io/FileManager;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/io/FileManager;->PROP_SAVING_QUEUE_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 33
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaFileUpdated"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/camera/io/FileManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_FILES_RESET:Lcom/oneplus/base/EventKey;

    .line 37
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaFileUpdated"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/io/FileManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_FILE_ADDED:Lcom/oneplus/base/EventKey;

    .line 41
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaFileSaved"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/io/FileManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    .line 45
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaFileSaved"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/io/FileManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_FILE_DELETED:Lcom/oneplus/base/EventKey;

    .line 49
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSaveCancelled"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/io/FileManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    .line 53
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSaveFailed"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/io/FileManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    .line 57
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaSaved"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/io/FileManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    .line 19
    return-void
.end method


# virtual methods
.method public abstract deleteFile(Ljava/lang/String;)V
.end method

.method public abstract getBitmap(Ljava/lang/String;IILcom/oneplus/camera/io/FileManager$PhotoCallback;I)V
.end method

.method public abstract getFileUri(Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public abstract getMediaFiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isBusy()Z
.end method

.method public abstract isFileSaving()Z
.end method

.method public abstract pauseInsert()V
.end method

.method public abstract resumeInsert()V
.end method

.method public abstract saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract scanFiles()V
.end method

.method public abstract setCurrent(I)V
.end method
