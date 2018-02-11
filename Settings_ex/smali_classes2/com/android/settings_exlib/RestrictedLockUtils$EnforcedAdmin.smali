.class public Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
.super Ljava/lang/Object;
.source "RestrictedLockUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/RestrictedLockUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnforcedAdmin"
.end annotation


# static fields
.field public static final MULTIPLE_ENFORCED_ADMIN:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;


# instance fields
.field public component:Landroid/content/ComponentName;

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 702
    new-instance v0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v0}, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 697
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 699
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 717
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 699
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 705
    iput-object p1, p0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 706
    iput p2, p0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 704
    return-void
.end method

.method public constructor <init>(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1
    .param p1, "other"    # Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    const/4 v0, 0x0

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    iput-object v0, p0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 699
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 710
    if-nez p1, :cond_0

    .line 711
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 713
    :cond_0
    iget-object v0, p1, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 714
    iget v0, p1, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    iput v0, p0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 709
    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1
    .param p1, "other"    # Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    .line 740
    if-nez p1, :cond_0

    .line 741
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iput-object v0, p1, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 744
    iget v0, p0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    iput v0, p1, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 739
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 721
    if-ne p1, p0, :cond_0

    return v4

    .line 722
    :cond_0
    instance-of v1, p1, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v1, :cond_1

    return v3

    :cond_1
    move-object v0, p1

    .line 723
    check-cast v0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 724
    .local v0, "other":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    iget v1, p0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    iget v2, v0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    if-eq v1, v2, :cond_2

    .line 725
    return v3

    .line 727
    :cond_2
    iget-object v1, p0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-nez v1, :cond_4

    .line 729
    :cond_3
    return v4

    .line 728
    :cond_4
    iget-object v1, p0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 727
    if-nez v1, :cond_3

    .line 731
    :cond_5
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EnforcedAdmin{component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
