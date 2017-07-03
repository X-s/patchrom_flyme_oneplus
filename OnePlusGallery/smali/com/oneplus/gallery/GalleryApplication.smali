.class public abstract Lcom/oneplus/gallery/GalleryApplication;
.super Lcom/oneplus/base/BaseApplication;
.source "GalleryApplication.java"


# static fields
.field public static final EVENT_ACTIVITY_LAUNCHED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/ActivityLaunchEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_READ_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_WRITE_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 18
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsReadStoragePermissionGranted"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/GalleryApplication;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/GalleryApplication;->PROP_IS_READ_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    .line 22
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsWriteStoragePermissionGranted"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/GalleryApplication;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/GalleryApplication;->PROP_IS_WRITE_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    .line 28
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "ActivityLaunched"

    const-class v2, Lcom/oneplus/gallery/ActivityLaunchEventArgs;

    const-class v3, Lcom/oneplus/gallery/GalleryApplication;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/GalleryApplication;->EVENT_ACTIVITY_LAUNCHED:Lcom/oneplus/base/EventKey;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-direct {p0}, Lcom/oneplus/base/BaseApplication;-><init>()V

    .line 36
    sget-object v0, Lcom/oneplus/gallery/GalleryApplication;->PROP_IS_READ_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 37
    sget-object v0, Lcom/oneplus/gallery/GalleryApplication;->PROP_IS_WRITE_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 38
    return-void
.end method

.method public static current()Lcom/oneplus/gallery/GalleryApplication;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GalleryApplication;

    return-object v0
.end method


# virtual methods
.method public abstract createGallery()Lcom/oneplus/gallery/Gallery;
.end method

.method final notifyActivityLaunched(Lcom/oneplus/gallery/GalleryActivity;Lcom/oneplus/gallery/ActivityLaunchType;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/gallery/GalleryActivity;
    .param p2, "launchType"    # Lcom/oneplus/gallery/ActivityLaunchType;

    .prologue
    .line 61
    sget-object v0, Lcom/oneplus/gallery/GalleryApplication;->EVENT_ACTIVITY_LAUNCHED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/gallery/ActivityLaunchEventArgs;

    invoke-direct {v1, p1, p2}, Lcom/oneplus/gallery/ActivityLaunchEventArgs;-><init>(Lcom/oneplus/gallery/GalleryActivity;Lcom/oneplus/gallery/ActivityLaunchType;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 62
    return-void
.end method

.method public notifyPermissionDenied(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryApplication;->verifyAccess()V

    .line 72
    if-eqz p1, :cond_1

    .line 74
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 84
    :cond_1
    :goto_1
    return-void

    .line 74
    :sswitch_0
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 77
    :pswitch_0
    sget-object v0, Lcom/oneplus/gallery/GalleryApplication;->PROP_IS_READ_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    :pswitch_1
    sget-object v0, Lcom/oneplus/gallery/GalleryApplication;->PROP_IS_WRITE_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 74
    :sswitch_data_0
    .sparse-switch
        -0x1833add0 -> :sswitch_0
        0x516a29a7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public notifyPermissionGranted(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryApplication;->verifyAccess()V

    .line 94
    if-eqz p1, :cond_1

    .line 96
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 106
    :cond_1
    :goto_1
    return-void

    .line 96
    :sswitch_0
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 99
    :pswitch_0
    sget-object v0, Lcom/oneplus/gallery/GalleryApplication;->PROP_IS_READ_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    :pswitch_1
    sget-object v0, Lcom/oneplus/gallery/GalleryApplication;->PROP_IS_WRITE_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    :sswitch_data_0
    .sparse-switch
        -0x1833add0 -> :sswitch_0
        0x516a29a7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
