.class public Lcom/amap/api/maps2d/SupportMapFragment;
.super Landroid/support/v4/app/Fragment;
.source "SupportMapFragment.java"


# instance fields
.field private a:Lcom/amap/api/maps2d/AMap;

.field private b:Lcom/amap/api/mapcore2d/z;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/amap/api/maps2d/SupportMapFragment;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/amap/api/maps2d/AMapOptions;

    invoke-direct {v0}, Lcom/amap/api/maps2d/AMapOptions;-><init>()V

    invoke-static {v0}, Lcom/amap/api/maps2d/SupportMapFragment;->newInstance(Lcom/amap/api/maps2d/AMapOptions;)Lcom/amap/api/maps2d/SupportMapFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/amap/api/maps2d/AMapOptions;)Lcom/amap/api/maps2d/SupportMapFragment;
    .locals 4

    .prologue
    .line 50
    new-instance v1, Lcom/amap/api/maps2d/SupportMapFragment;

    invoke-direct {v1}, Lcom/amap/api/maps2d/SupportMapFragment;-><init>()V

    .line 51
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 53
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v3, 0x0

    .line 54
    invoke-virtual {p0, v0, v3}, Lcom/amap/api/maps2d/AMapOptions;->writeToParcel(Landroid/os/Parcel;I)V

    const-string/jumbo v3, "MapOptions"

    .line 55
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/SupportMapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getMap()Lcom/amap/api/maps2d/AMap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "getMap"

    .line 80
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    invoke-interface {v1}, Lcom/amap/api/mapcore2d/z;->a()Lcom/amap/api/mapcore2d/w;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    if-eqz v0, :cond_1

    .line 94
    iget-object v1, p0, Lcom/amap/api/maps2d/SupportMapFragment;->a:Lcom/amap/api/maps2d/AMap;

    if-eqz v1, :cond_2

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/amap/api/maps2d/SupportMapFragment;->a:Lcom/amap/api/maps2d/AMap;

    return-object v0

    .line 82
    :cond_0
    return-object v2

    .line 90
    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupportMapFragment"

    .line 88
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0

    .line 92
    :cond_1
    return-object v2

    .line 95
    :cond_2
    new-instance v1, Lcom/amap/api/maps2d/AMap;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/AMap;-><init>(Lcom/amap/api/mapcore2d/w;)V

    iput-object v1, p0, Lcom/amap/api/maps2d/SupportMapFragment;->a:Lcom/amap/api/maps2d/AMap;

    goto :goto_0
.end method

.method protected getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amap/api/maps2d/SupportMapFragment;->b:Lcom/amap/api/mapcore2d/z;

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/amap/api/maps2d/SupportMapFragment;->b:Lcom/amap/api/mapcore2d/z;

    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/z;->a(Landroid/content/Context;)V

    .line 69
    iget-object v0, p0, Lcom/amap/api/maps2d/SupportMapFragment;->b:Lcom/amap/api/mapcore2d/z;

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore2d/aq;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/aq;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps2d/SupportMapFragment;->b:Lcom/amap/api/mapcore2d/z;

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 105
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v1, "onCreateView"

    .line 137
    if-eqz p3, :cond_0

    .line 140
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/mapcore2d/z;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getArguments()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    const-string/jumbo v2, "SupportMapFragment"

    .line 143
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-object v3
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const-string/jumbo v1, "onDestroy"

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/z;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 190
    return-void

    .line 188
    :catch_0
    move-exception v0

    const-string/jumbo v2, "SupportMapFragment"

    .line 187
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const-string/jumbo v1, "onDestroyView"

    .line 174
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/z;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 179
    return-void

    .line 177
    :catch_0
    move-exception v0

    const-string/jumbo v2, "SupportMapFragment"

    .line 176
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    const-string/jumbo v1, "onInflate"

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    new-instance v2, Lcom/amap/api/maps2d/AMapOptions;

    invoke-direct {v2}, Lcom/amap/api/maps2d/AMapOptions;-><init>()V

    invoke-interface {v0, p1, v2, p3}, Lcom/amap/api/mapcore2d/z;->a(Landroid/app/Activity;Lcom/amap/api/maps2d/AMapOptions;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    const-string/jumbo v2, "SupportMapFragment"

    .line 118
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 194
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    const-string/jumbo v1, "onLowMemory"

    .line 197
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/z;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    const-string/jumbo v2, "SupportMapFragment"

    .line 199
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 161
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    const-string/jumbo v1, "onPause"

    .line 164
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/z;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    const-string/jumbo v2, "SupportMapFragment"

    .line 166
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 150
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const-string/jumbo v1, "onResume"

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/z;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    const-string/jumbo v2, "SupportMapFragment"

    .line 155
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "onSaveInstanceState"

    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/z;->b(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 212
    return-void

    .line 210
    :catch_0
    move-exception v0

    const-string/jumbo v2, "SupportMapFragment"

    .line 209
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 217
    return-void
.end method
