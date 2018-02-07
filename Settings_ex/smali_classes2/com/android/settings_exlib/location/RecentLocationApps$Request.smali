.class public Lcom/android/settings_exlib/location/RecentLocationApps$Request;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/location/RecentLocationApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public final contentDescription:Ljava/lang/CharSequence;

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final isHighBattery:Z

.field public final label:Ljava/lang/CharSequence;

.field public final packageName:Ljava/lang/String;

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "label"    # Ljava/lang/CharSequence;
    .param p5, "isHighBattery"    # Z
    .param p6, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/android/settings_exlib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    .line 179
    iput-object p2, p0, Lcom/android/settings_exlib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    .line 180
    iput-object p3, p0, Lcom/android/settings_exlib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    .line 181
    iput-object p4, p0, Lcom/android/settings_exlib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    .line 182
    iput-boolean p5, p0, Lcom/android/settings_exlib/location/RecentLocationApps$Request;->isHighBattery:Z

    .line 183
    iput-object p6, p0, Lcom/android/settings_exlib/location/RecentLocationApps$Request;->contentDescription:Ljava/lang/CharSequence;

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Lcom/android/settings_exlib/location/RecentLocationApps$Request;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "label"    # Ljava/lang/CharSequence;
    .param p5, "isHighBattery"    # Z
    .param p6, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/settings_exlib/location/RecentLocationApps$Request;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;)V

    return-void
.end method
